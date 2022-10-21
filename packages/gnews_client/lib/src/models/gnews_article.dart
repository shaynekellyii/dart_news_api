import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gnews_client/src/models/gnews_models.dart';

part 'gnews_article.freezed.dart';
part 'gnews_article.g.dart';

///
/// Article object returned by headlines endpoints.
///
@freezed
class GNewsArticle with _$GNewsArticle {
  /// Generated GNewsArticle factory
  const factory GNewsArticle({
    required String title,
    required String description,
    required String content,
    required String url,
    required DateTime publishedAt,
    required GNewsSource source,
    String? image,
  }) = _GNewsArticle;

  /// Generated serialization factory
  factory GNewsArticle.fromJson(Map<String, Object?> json) =>
      _$GNewsArticleFromJson(json);
}
