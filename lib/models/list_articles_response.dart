import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gnews_client/gnews_client.dart';
import 'package:news_server/models/models.dart';

part 'list_articles_response.freezed.dart';
part 'list_articles_response.g.dart';

///
/// Response object returned by the /articles endpoint.
///
@freezed
class ListArticlesResponse with _$ListArticlesResponse {
  /// Generated ListArticlesResponse factory
  const factory ListArticlesResponse({
    required int count,
    required List<Article> articles,
  }) = _ListArticlesResponse;

  /// Generated serialization factory
  factory ListArticlesResponse.fromJson(Map<String, Object?> json) =>
      _$ListArticlesResponseFromJson(json);

  /// Takes a list response from the GNews API and transforms it to the generic
  /// list response type.
  factory ListArticlesResponse.fromGNewsListResponse(
    GNewsListHeadlinesResponse response,
  ) =>
      ListArticlesResponse(
        count: response.articles.length,
        articles: response.articles.map(Article.fromGNewsArticle).toList(),
      );
}
