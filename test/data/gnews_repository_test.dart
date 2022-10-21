import 'package:gnews_client/gnews_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:news_server/data/data.dart';
import 'package:news_server/models/models.dart';
import 'package:news_server/utilities/utilities.dart';
import 'package:test/test.dart';

class _MockCache<K, V> extends Mock implements DataCache<K, V> {}

class _MockGNewsClient extends Mock implements GNewsClient {}

final _cachedArticles = [
  Article(
    createdAt: DateTime.fromMillisecondsSinceEpoch(0),
    title: 'title',
    url: 'url',
    content: 'content',
    sourceName: 'source name',
    sourceUrl: 'source url',
    metadata: const ArticleMetadata(wordFrequency: {}, charCount: 0),
  ),
];
final _networkedArticles = [
  GNewsArticle(
    publishedAt: DateTime.fromMillisecondsSinceEpoch(0),
    title: 'title_net',
    url: 'url_net',
    content: 'content_net',
    source: const GNewsSource(
      name: 'source name_net',
      url: 'source url_net',
    ),
    description: 'description_net',
  ),
];

void main() {
  group('GNewsRepository', () {
    test('it should return top headlines from cache', () async {
      final mockCache = _MockCache<String, List<Article>>();
      when(() => mockCache.get('headlines')).thenAnswer((_) => _cachedArticles);
      final mockClient = _MockGNewsClient();

      final repository = GNewsRepository(
        gNewsClient: mockClient,
        cache: mockCache,
      );
      final articles = (await repository.listTopHeadlines(count: 1)).articles;

      expect(articles, _cachedArticles);
    });

    test('it should fetch top headlines when cache empty', () async {
      final mockCache = _MockCache<String, List<Article>>();
      when(() => mockCache.get('headlines')).thenAnswer((_) => []);
      final mockClient = _MockGNewsClient();
      when(
        () =>
            mockClient.listTopHeadlines(lang: any(named: 'lang'), maxCount: 1),
      ).thenAnswer(
        (_) async => GNewsListHeadlinesResponse(
          totalArticles: 1,
          articles: _networkedArticles,
        ),
      );

      final repository = GNewsRepository(
        gNewsClient: mockClient,
        cache: mockCache,
      );
      final articles = (await repository.listTopHeadlines(count: 1)).articles;

      expect(articles, _networkedArticles.map((a) => a.toGeneric()));
    });
  });
}
