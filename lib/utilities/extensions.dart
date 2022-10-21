import 'package:gnews_client/gnews_client.dart';
import 'package:news_server/models/models.dart';
import 'package:news_server/utilities/utilities.dart';

/// Extension for GNews specific response class.
extension GNewsListHeadlinesResponseExt on GNewsListHeadlinesResponse {
  /// Transforms the GNews specific list response into the generic class.
  ListArticlesResponse toGeneric() =>
      ListArticlesResponse.fromGNewsListResponse(this);
}

/// Extension for GNews specific Article class.
extension GNewsArticleExt on GNewsArticle {
  /// Transforms the GNews specific list response into the generic class.
  Article toGeneric() => Article.fromGNewsArticle(this);

  ArticleMetadata get metadata => ArticleMetadata(
        wordFrequency: Metadata.generateWordFrequency(content),
        charCount: content.length,
      );
}
