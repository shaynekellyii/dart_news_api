import 'package:gnews_client/gnews_client.dart';
import 'package:news_server/utilities/extensions.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Extensions', () {
    test('GNews list headline response is transformed to generic model', () {
      final gNewsResponse = GNewsListHeadlinesResponse(
        totalArticles: 1,
        articles: [
          GNewsArticle(
            publishedAt: DateTime.fromMillisecondsSinceEpoch(0),
            title: 'title',
            url: 'url',
            content: 'content',
            source: const GNewsSource(name: 'name', url: 'url'),
            description: 'description',
            image: 'image',
          ),
        ],
      );
      final generic = gNewsResponse.toGeneric();
      expect(generic.count, 1);
      expect(generic.articles.length, 1);
    });

    test('GNews article is transformed to generic model', () {
      final gNewsArticle = GNewsArticle(
        publishedAt: DateTime.fromMillisecondsSinceEpoch(0),
        title: 'title',
        url: 'url',
        content: 'content',
        source: const GNewsSource(name: 'name', url: 'url'),
        description: 'description',
        image: 'image',
      );
      final generic = gNewsArticle.toGeneric();
      expect(generic.content, 'content');
      expect(generic.createdAt, DateTime.fromMillisecondsSinceEpoch(0));
      expect(generic.description, 'description');
      expect(generic.imageUrl, 'image');
      expect(generic.metadata, isNotNull);
      expect(generic.sourceName, 'name');
      expect(generic.sourceUrl, 'url');
      expect(generic.title, 'title');
      expect(generic.url, 'url');
    });
  });
}
