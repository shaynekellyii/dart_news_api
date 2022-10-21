// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gnews_list_headlines_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GNewsListHeadlinesResponse _$GNewsListHeadlinesResponseFromJson(
    Map<String, dynamic> json) {
  return _GNewsListHeadlinesResponse.fromJson(json);
}

/// @nodoc
mixin _$GNewsListHeadlinesResponse {
  int get totalArticles => throw _privateConstructorUsedError;
  List<GNewsArticle> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GNewsListHeadlinesResponseCopyWith<GNewsListHeadlinesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GNewsListHeadlinesResponseCopyWith<$Res> {
  factory $GNewsListHeadlinesResponseCopyWith(GNewsListHeadlinesResponse value,
          $Res Function(GNewsListHeadlinesResponse) then) =
      _$GNewsListHeadlinesResponseCopyWithImpl<$Res,
          GNewsListHeadlinesResponse>;
  @useResult
  $Res call({int totalArticles, List<GNewsArticle> articles});
}

/// @nodoc
class _$GNewsListHeadlinesResponseCopyWithImpl<$Res,
        $Val extends GNewsListHeadlinesResponse>
    implements $GNewsListHeadlinesResponseCopyWith<$Res> {
  _$GNewsListHeadlinesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalArticles = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      totalArticles: null == totalArticles
          ? _value.totalArticles
          : totalArticles // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<GNewsArticle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GNewsListHeadlinesResponseCopyWith<$Res>
    implements $GNewsListHeadlinesResponseCopyWith<$Res> {
  factory _$$_GNewsListHeadlinesResponseCopyWith(
          _$_GNewsListHeadlinesResponse value,
          $Res Function(_$_GNewsListHeadlinesResponse) then) =
      __$$_GNewsListHeadlinesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalArticles, List<GNewsArticle> articles});
}

/// @nodoc
class __$$_GNewsListHeadlinesResponseCopyWithImpl<$Res>
    extends _$GNewsListHeadlinesResponseCopyWithImpl<$Res,
        _$_GNewsListHeadlinesResponse>
    implements _$$_GNewsListHeadlinesResponseCopyWith<$Res> {
  __$$_GNewsListHeadlinesResponseCopyWithImpl(
      _$_GNewsListHeadlinesResponse _value,
      $Res Function(_$_GNewsListHeadlinesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalArticles = null,
    Object? articles = null,
  }) {
    return _then(_$_GNewsListHeadlinesResponse(
      totalArticles: null == totalArticles
          ? _value.totalArticles
          : totalArticles // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<GNewsArticle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GNewsListHeadlinesResponse implements _GNewsListHeadlinesResponse {
  const _$_GNewsListHeadlinesResponse(
      {required this.totalArticles, required final List<GNewsArticle> articles})
      : _articles = articles;

  factory _$_GNewsListHeadlinesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GNewsListHeadlinesResponseFromJson(json);

  @override
  final int totalArticles;
  final List<GNewsArticle> _articles;
  @override
  List<GNewsArticle> get articles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'GNewsListHeadlinesResponse(totalArticles: $totalArticles, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GNewsListHeadlinesResponse &&
            (identical(other.totalArticles, totalArticles) ||
                other.totalArticles == totalArticles) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalArticles,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GNewsListHeadlinesResponseCopyWith<_$_GNewsListHeadlinesResponse>
      get copyWith => __$$_GNewsListHeadlinesResponseCopyWithImpl<
          _$_GNewsListHeadlinesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GNewsListHeadlinesResponseToJson(
      this,
    );
  }
}

abstract class _GNewsListHeadlinesResponse
    implements GNewsListHeadlinesResponse {
  const factory _GNewsListHeadlinesResponse(
          {required final int totalArticles,
          required final List<GNewsArticle> articles}) =
      _$_GNewsListHeadlinesResponse;

  factory _GNewsListHeadlinesResponse.fromJson(Map<String, dynamic> json) =
      _$_GNewsListHeadlinesResponse.fromJson;

  @override
  int get totalArticles;
  @override
  List<GNewsArticle> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_GNewsListHeadlinesResponseCopyWith<_$_GNewsListHeadlinesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
