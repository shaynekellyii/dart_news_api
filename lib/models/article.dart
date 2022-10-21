import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gnews_client/gnews_client.dart';
import 'package:news_server/models/models.dart';
import 'package:news_server/utilities/utilities.dart';

part 'article.freezed.dart';
part 'article.g.dart';

///
/// An article model returned by /articles. This model should abstract
/// the GNews API returned articles so that more articles sources can be
/// used in the future.
///
@freezed
class Article with _$Article {
  /// Generated Article factory
  const factory Article({
    required DateTime createdAt,
    required String title,
    required String url,
    required String content,
    required String sourceName,
    required String sourceUrl,
    required ArticleMetadata metadata,
    String? description,
    String? imageUrl,
  }) = _Article;

  /// Generated serialization factory
  factory Article.fromJson(Map<String, Object?> json) =>
      _$ArticleFromJson(json);

  /// Transforms an article ƒetched from the GNews API into the generic Article
  /// type.
  factory Article.fromGNewsArticle(GNewsArticle article) => Article(
        createdAt: article.publishedAt,
        title: article.title,
        url: article.url,
        content: article.content,
        sourceName: article.source.name,
        sourceUrl: article.source.url,
        description: article.description,
        imageUrl: article.image,
        metadata: article.metadata,
      );
}
