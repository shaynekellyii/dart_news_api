// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gnews_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GNewsArticle _$GNewsArticleFromJson(Map<String, dynamic> json) {
  return _GNewsArticle.fromJson(json);
}

/// @nodoc
mixin _$GNewsArticle {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  GNewsSource get source => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GNewsArticleCopyWith<GNewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GNewsArticleCopyWith<$Res> {
  factory $GNewsArticleCopyWith(
          GNewsArticle value, $Res Function(GNewsArticle) then) =
      _$GNewsArticleCopyWithImpl<$Res, GNewsArticle>;
  @useResult
  $Res call(
      {String title,
      String description,
      String content,
      String url,
      DateTime publishedAt,
      GNewsSource source,
      String? image});

  $GNewsSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$GNewsArticleCopyWithImpl<$Res, $Val extends GNewsArticle>
    implements $GNewsArticleCopyWith<$Res> {
  _$GNewsArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? content = null,
    Object? url = null,
    Object? publishedAt = null,
    Object? source = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as GNewsSource,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GNewsSourceCopyWith<$Res> get source {
    return $GNewsSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GNewsArticleCopyWith<$Res>
    implements $GNewsArticleCopyWith<$Res> {
  factory _$$_GNewsArticleCopyWith(
          _$_GNewsArticle value, $Res Function(_$_GNewsArticle) then) =
      __$$_GNewsArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String content,
      String url,
      DateTime publishedAt,
      GNewsSource source,
      String? image});

  @override
  $GNewsSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$_GNewsArticleCopyWithImpl<$Res>
    extends _$GNewsArticleCopyWithImpl<$Res, _$_GNewsArticle>
    implements _$$_GNewsArticleCopyWith<$Res> {
  __$$_GNewsArticleCopyWithImpl(
      _$_GNewsArticle _value, $Res Function(_$_GNewsArticle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? content = null,
    Object? url = null,
    Object? publishedAt = null,
    Object? source = null,
    Object? image = freezed,
  }) {
    return _then(_$_GNewsArticle(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as GNewsSource,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GNewsArticle implements _GNewsArticle {
  const _$_GNewsArticle(
      {required this.title,
      required this.description,
      required this.content,
      required this.url,
      required this.publishedAt,
      required this.source,
      this.image});

  factory _$_GNewsArticle.fromJson(Map<String, dynamic> json) =>
      _$$_GNewsArticleFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String content;
  @override
  final String url;
  @override
  final DateTime publishedAt;
  @override
  final GNewsSource source;
  @override
  final String? image;

  @override
  String toString() {
    return 'GNewsArticle(title: $title, description: $description, content: $content, url: $url, publishedAt: $publishedAt, source: $source, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GNewsArticle &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, content, url,
      publishedAt, source, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GNewsArticleCopyWith<_$_GNewsArticle> get copyWith =>
      __$$_GNewsArticleCopyWithImpl<_$_GNewsArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GNewsArticleToJson(
      this,
    );
  }
}

abstract class _GNewsArticle implements GNewsArticle {
  const factory _GNewsArticle(
      {required final String title,
      required final String description,
      required final String content,
      required final String url,
      required final DateTime publishedAt,
      required final GNewsSource source,
      final String? image}) = _$_GNewsArticle;

  factory _GNewsArticle.fromJson(Map<String, dynamic> json) =
      _$_GNewsArticle.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get content;
  @override
  String get url;
  @override
  DateTime get publishedAt;
  @override
  GNewsSource get source;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_GNewsArticleCopyWith<_$_GNewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
