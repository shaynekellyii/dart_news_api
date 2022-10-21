import 'package:freezed_annotation/freezed_annotation.dart';

part 'gnews_source.freezed.dart';
part 'gnews_source.g.dart';

///
/// Meta object describing an article's source.
///
@freezed
class GNewsSource with _$GNewsSource {
  /// Generated GNewsSource factory
  const factory GNewsSource({
    required String name,
    required String url,
  }) = _GNewsSource;

  /// Generated serialization factory
  factory GNewsSource.fromJson(Map<String, Object?> json) =>
      _$GNewsSourceFromJson(json);
}
