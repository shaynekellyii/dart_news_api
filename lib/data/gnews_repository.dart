import 'dart:math';

import 'package:country_code/country_code.dart';
import 'package:dotenv/dotenv.dart';
import 'package:gnews_client/gnews_client.dart';
import 'package:logging/logging.dart';
import 'package:news_server/data/data.dart';
import 'package:news_server/models/models.dart';
import 'package:news_server/utilities/utilities.dart';

///
/// Handles caching or fetching of GNews API data.
///
class GNewsRepository {
  GNewsRepository({
    GNewsClient? gNewsClient,
    DataCache<String, List<Article>>? cache,
  })  : _cache = cache ?? DataCache<String, List<Article>>(),
        _gNewsClient = gNewsClient ??
            GNewsClient(
              apiToken: (DotEnv(includePlatformEnvironment: true)
                    ..load())['GNEWS_API_KEY'] ??
                  '',
            );

  static const _headlinesKey = 'headlines';
  static const _maxArticleCount = 10;

  final DataCache<String, List<Article>> _cache;
  final logger = Logger('GNewsRepository');
  late final GNewsClient _gNewsClient;

  /// Lists top headlines, up to a maximum count of 10.
  Future<ListArticlesResponse> listTopHeadlines({int count = 10}) async {
    final boundedCount = count > _maxArticleCount ? _maxArticleCount : count;

    // All 10 articles will be cached even when less than 10 are requested
    logger.info('Requesting $boundedCount headlines from cache');
    final cachedArticles = _cache.get(_headlinesKey);

    if (cachedArticles != null) {
      if (cachedArticles.length < boundedCount) {
        logger.info('Did not fetch enough articles from cache, re-fetching');
      } else {
        logger.info('Returning $boundedCount headlines from cache');
        return ListArticlesResponse(
          count: boundedCount,
          articles: cachedArticles.take(boundedCount).toList(),
        );
      }
    }

    logger.info('Requesting $boundedCount headlines from gnews');
    final response = await _gNewsClient.listTopHeadlines(
      maxCount: boundedCount,
    );

    logger.info(
      'Returning and caching ${min(boundedCount, response.totalArticles)} '
      'headlines from gnews',
    );
    _cache.put(
      _headlinesKey,
      response.articles.map((a) => a.toGeneric()).toList(),
    );
    return response
        .copyWith(
          totalArticles: min(boundedCount, response.totalArticles),
          articles: response.articles.take(boundedCount).toList(),
        )
        .toGeneric();
  }

  /// Searches articles by keyword and/or country, up to a maximum count of 10.
  Future<ListArticlesResponse> searchArticles({
    required String keyword,
    String? country,
    int count = 10,
  }) async {
    final boundedCount = count > _maxArticleCount ? _maxArticleCount : count;

    // All 10 articles will be cached even when less than 10 are requested
    logger.info('Requesting $boundedCount headlines from cache');

    final cacheKey = _getSearchCacheKey(keyword, country);
    final cachedArticles = _cache.get(cacheKey);
    if (cachedArticles != null) {
      logger.info('Returning $boundedCount headlines from cache');
      return ListArticlesResponse(
        count: boundedCount,
        articles: cachedArticles.take(boundedCount).toList(),
      );
    }

    logger.info('Searching articles from gnews');
    final response = await _gNewsClient.searchArticles(
      keyword: keyword,
      country: CountryCode.tryParse(country ?? ''),
    );

    logger.info(
      'Returning and caching ${min(_maxArticleCount, response.totalArticles)} '
      'headlines from gnews',
    );
    _cache.put(
      cacheKey,
      response.articles.map((a) => a.toGeneric()).toList(),
    );
    return response
        .copyWith(
          totalArticles: min(boundedCount, response.totalArticles),
          articles: response.articles.take(boundedCount).toList(),
        )
        .toGeneric();
  }

  String _getSearchCacheKey(String? keyword, String? country) => {
        'keyword': keyword?.toLowerCase(),
        'country': country?.toLowerCase(),
      }.toString();
}
