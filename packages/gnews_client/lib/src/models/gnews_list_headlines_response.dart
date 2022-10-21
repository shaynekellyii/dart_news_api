import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gnews_client/src/models/gnews_models.dart';

part 'gnews_list_headlines_response.freezed.dart';
part 'gnews_list_headlines_response.g.dart';

///
/// Response object returned by the top headlines endpoint.
///
@freezed
class GNewsListHeadlinesResponse with _$GNewsListHeadlinesResponse {
  /// Generated GNewsListHeadlinesResponse factory
  const factory GNewsListHeadlinesResponse({
    required int totalArticles,
    required List<GNewsArticle> articles,
  }) = _GNewsListHeadlinesResponse;

  /// Generated serialization factory
  factory GNewsListHeadlinesResponse.fromJson(Map<String, Object?> json) =>
      _$GNewsListHeadlinesResponseFromJson(json);
}
