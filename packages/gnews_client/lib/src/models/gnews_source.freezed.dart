// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gnews_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GNewsSource _$GNewsSourceFromJson(Map<String, dynamic> json) {
  return _GNewsSource.fromJson(json);
}

/// @nodoc
mixin _$GNewsSource {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GNewsSourceCopyWith<GNewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GNewsSourceCopyWith<$Res> {
  factory $GNewsSourceCopyWith(
          GNewsSource value, $Res Function(GNewsSource) then) =
      _$GNewsSourceCopyWithImpl<$Res, GNewsSource>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$GNewsSourceCopyWithImpl<$Res, $Val extends GNewsSource>
    implements $GNewsSourceCopyWith<$Res> {
  _$GNewsSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GNewsSourceCopyWith<$Res>
    implements $GNewsSourceCopyWith<$Res> {
  factory _$$_GNewsSourceCopyWith(
          _$_GNewsSource value, $Res Function(_$_GNewsSource) then) =
      __$$_GNewsSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_GNewsSourceCopyWithImpl<$Res>
    extends _$GNewsSourceCopyWithImpl<$Res, _$_GNewsSource>
    implements _$$_GNewsSourceCopyWith<$Res> {
  __$$_GNewsSourceCopyWithImpl(
      _$_GNewsSource _value, $Res Function(_$_GNewsSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_GNewsSource(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GNewsSource implements _GNewsSource {
  const _$_GNewsSource({required this.name, required this.url});

  factory _$_GNewsSource.fromJson(Map<String, dynamic> json) =>
      _$$_GNewsSourceFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'GNewsSource(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GNewsSource &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GNewsSourceCopyWith<_$_GNewsSource> get copyWith =>
      __$$_GNewsSourceCopyWithImpl<_$_GNewsSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GNewsSourceToJson(
      this,
    );
  }
}

abstract class _GNewsSource implements GNewsSource {
  const factory _GNewsSource(
      {required final String name, required final String url}) = _$_GNewsSource;

  factory _GNewsSource.fromJson(Map<String, dynamic> json) =
      _$_GNewsSource.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_GNewsSourceCopyWith<_$_GNewsSource> get copyWith =>
      throw _privateConstructorUsedError;
}
