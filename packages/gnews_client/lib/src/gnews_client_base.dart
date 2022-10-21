import 'package:country_code/country_code.dart';
import 'package:dio/dio.dart';
import 'package:gnews_client/src/models/gnews_models.dart';

const _baseUrl = 'https://gnews.io/api/v4';

///
/// Client class for interacting with the [GNews API](https://gnews.io).
///
class GNewsClient {
  ///
  /// Create a new GNewsClient with an API token. The API token is required to
  /// fetch articles.
  ///
  GNewsClient({
    required String apiToken,
    Dio? dio,
  }) : _dio = dio ?? Dio() {
    _dio
      ..options.baseUrl = _baseUrl
      ..interceptors.add(_buildAuthInterceptor(apiToken));
  }

  final Dio _dio;

  InterceptorsWrapper _buildAuthInterceptor(String apiToken) =>
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.queryParameters['token'] = apiToken;
          return handler.next(options);
        },
      );

  ///
  /// Lists top headlines from the GNews API. Defaults to English articles.
  /// `maxCount` cannot be greater than 10 if using a free plan.
  ///
  Future<GNewsListHeadlinesResponse> listTopHeadlines({
    String lang = 'en',
    int maxCount = 10,
  }) async {
    late final Map<String, dynamic>? data;
    try {
      data = (await _dio.get<Map<String, dynamic>>(
        '/top-headlines',
        queryParameters: {'lang': lang, 'max': maxCount},
      ))
          .data;
    } on DioError catch (e) {
      throw GNewsClientException(
        msg: '${e.message}, Data: ${e.response?.data}',
        statusCode: e.response?.statusCode,
      );
    }

    return data != null
        ? GNewsListHeadlinesResponse.fromJson(data)
        : throw const GNewsClientException(msg: 'Returned data was null');
  }

  ///
  /// Searches articles from the GNews API by `keyword` or `country`. Defaults
  /// to English articles. `maxCount` cannot be greater than 10 if using a free
  /// plan. `country` format is ISO 3166-1 2-character country code, supported
  /// countries are found in [GNewsCountry].
  ///
  Future<GNewsListHeadlinesResponse> searchArticles({
    required String keyword,
    String lang = 'en',
    int maxCount = 10,
    CountryCode? country,
  }) async {
    late final Map<String, dynamic>? data;
    if (country != null && !GNewsCountry.supportedCountries.contains(country)) {
      throw GNewsClientException(
        msg: 'Country ${country.alpha2} is not supported by GNews',
        statusCode: 400,
      );
    }

    try {
      data = (await _dio.get<Map<String, dynamic>>(
        '/search',
        queryParameters: {
          'lang': lang,
          'max': maxCount,
          'q': keyword,
          'country': country?.alpha2,
        }..removeWhere((_, value) => value == null),
      ))
          .data;
    } on DioError catch (e) {
      throw GNewsClientException(
        msg: '${e.message}, Data: ${e.response?.data}',
        statusCode: e.response?.statusCode,
      );
    }

    return data != null
        ? GNewsListHeadlinesResponse.fromJson(data)
        : throw const GNewsClientException(msg: 'Returned data was null');
  }
}
