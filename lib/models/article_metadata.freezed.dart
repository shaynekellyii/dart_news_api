// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleMetadata _$ArticleMetadataFromJson(Map<String, dynamic> json) {
  return _ArticleMetadata.fromJson(json);
}

/// @nodoc
mixin _$ArticleMetadata {
  Map<String, int> get wordFrequency => throw _privateConstructorUsedError;
  int get charCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleMetadataCopyWith<ArticleMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleMetadataCopyWith<$Res> {
  factory $ArticleMetadataCopyWith(
          ArticleMetadata value, $Res Function(ArticleMetadata) then) =
      _$ArticleMetadataCopyWithImpl<$Res, ArticleMetadata>;
  @useResult
  $Res call({Map<String, int> wordFrequency, int charCount});
}

/// @nodoc
class _$ArticleMetadataCopyWithImpl<$Res, $Val extends ArticleMetadata>
    implements $ArticleMetadataCopyWith<$Res> {
  _$ArticleMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordFrequency = null,
    Object? charCount = null,
  }) {
    return _then(_value.copyWith(
      wordFrequency: null == wordFrequency
          ? _value.wordFrequency
          : wordFrequency // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      charCount: null == charCount
          ? _value.charCount
          : charCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleMetadataCopyWith<$Res>
    implements $ArticleMetadataCopyWith<$Res> {
  factory _$$_ArticleMetadataCopyWith(
          _$_ArticleMetadata value, $Res Function(_$_ArticleMetadata) then) =
      __$$_ArticleMetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, int> wordFrequency, int charCount});
}

/// @nodoc
class __$$_ArticleMetadataCopyWithImpl<$Res>
    extends _$ArticleMetadataCopyWithImpl<$Res, _$_ArticleMetadata>
    implements _$$_ArticleMetadataCopyWith<$Res> {
  __$$_ArticleMetadataCopyWithImpl(
      _$_ArticleMetadata _value, $Res Function(_$_ArticleMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordFrequency = null,
    Object? charCount = null,
  }) {
    return _then(_$_ArticleMetadata(
      wordFrequency: null == wordFrequency
          ? _value._wordFrequency
          : wordFrequency // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      charCount: null == charCount
          ? _value.charCount
          : charCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleMetadata implements _ArticleMetadata {
  const _$_ArticleMetadata(
      {required final Map<String, int> wordFrequency, required this.charCount})
      : _wordFrequency = wordFrequency;

  factory _$_ArticleMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleMetadataFromJson(json);

  final Map<String, int> _wordFrequency;
  @override
  Map<String, int> get wordFrequency {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_wordFrequency);
  }

  @override
  final int charCount;

  @override
  String toString() {
    return 'ArticleMetadata(wordFrequency: $wordFrequency, charCount: $charCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleMetadata &&
            const DeepCollectionEquality()
                .equals(other._wordFrequency, _wordFrequency) &&
            (identical(other.charCount, charCount) ||
                other.charCount == charCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_wordFrequency), charCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleMetadataCopyWith<_$_ArticleMetadata> get copyWith =>
      __$$_ArticleMetadataCopyWithImpl<_$_ArticleMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleMetadataToJson(
      this,
    );
  }
}

abstract class _ArticleMetadata implements ArticleMetadata {
  const factory _ArticleMetadata(
      {required final Map<String, int> wordFrequency,
      required final int charCount}) = _$_ArticleMetadata;

  factory _ArticleMetadata.fromJson(Map<String, dynamic> json) =
      _$_ArticleMetadata.fromJson;

  @override
  Map<String, int> get wordFrequency;
  @override
  int get charCount;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleMetadataCopyWith<_$_ArticleMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
