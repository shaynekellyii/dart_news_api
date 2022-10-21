import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_metadata.freezed.dart';
part 'article_metadata.g.dart';

@freezed
class ArticleMetadata with _$ArticleMetadata {
  /// Generated ArticleMetadata factory
  const factory ArticleMetadata({
    required Map<String, int> wordFrequency,
  }) = _ArticleMetadata;

  /// Generated serialization factory
  factory ArticleMetadata.fromJson(Map<String, Object?> json) =>
      _$ArticleMetadataFromJson(json);
}
