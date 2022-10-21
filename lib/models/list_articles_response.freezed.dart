// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_articles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListArticlesResponse _$ListArticlesResponseFromJson(Map<String, dynamic> json) {
  return _ListArticlesResponse.fromJson(json);
}

/// @nodoc
mixin _$ListArticlesResponse {
  int get count => throw _privateConstructorUsedError;
  List<Article> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListArticlesResponseCopyWith<ListArticlesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListArticlesResponseCopyWith<$Res> {
  factory $ListArticlesResponseCopyWith(ListArticlesResponse value,
          $Res Function(ListArticlesResponse) then) =
      _$ListArticlesResponseCopyWithImpl<$Res, ListArticlesResponse>;
  @useResult
  $Res call({int count, List<Article> articles});
}

/// @nodoc
class _$ListArticlesResponseCopyWithImpl<$Res,
        $Val extends ListArticlesResponse>
    implements $ListArticlesResponseCopyWith<$Res> {
  _$ListArticlesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListArticlesResponseCopyWith<$Res>
    implements $ListArticlesResponseCopyWith<$Res> {
  factory _$$_ListArticlesResponseCopyWith(_$_ListArticlesResponse value,
          $Res Function(_$_ListArticlesResponse) then) =
      __$$_ListArticlesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<Article> articles});
}

/// @nodoc
class __$$_ListArticlesResponseCopyWithImpl<$Res>
    extends _$ListArticlesResponseCopyWithImpl<$Res, _$_ListArticlesResponse>
    implements _$$_ListArticlesResponseCopyWith<$Res> {
  __$$_ListArticlesResponseCopyWithImpl(_$_ListArticlesResponse _value,
      $Res Function(_$_ListArticlesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? articles = null,
  }) {
    return _then(_$_ListArticlesResponse(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListArticlesResponse implements _ListArticlesResponse {
  const _$_ListArticlesResponse(
      {required this.count, required final List<Article> articles})
      : _articles = articles;

  factory _$_ListArticlesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListArticlesResponseFromJson(json);

  @override
  final int count;
  final List<Article> _articles;
  @override
  List<Article> get articles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ListArticlesResponse(count: $count, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListArticlesResponse &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListArticlesResponseCopyWith<_$_ListArticlesResponse> get copyWith =>
      __$$_ListArticlesResponseCopyWithImpl<_$_ListArticlesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListArticlesResponseToJson(
      this,
    );
  }
}

abstract class _ListArticlesResponse implements ListArticlesResponse {
  const factory _ListArticlesResponse(
      {required final int count,
      required final List<Article> articles}) = _$_ListArticlesResponse;

  factory _ListArticlesResponse.fromJson(Map<String, dynamic> json) =
      _$_ListArticlesResponse.fromJson;

  @override
  int get count;
  @override
  List<Article> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_ListArticlesResponseCopyWith<_$_ListArticlesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
