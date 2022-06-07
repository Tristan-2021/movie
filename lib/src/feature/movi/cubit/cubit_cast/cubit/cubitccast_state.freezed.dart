// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cubitccast_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CubitccastState {
  List<Cast>? get cast => throw _privateConstructorUsedError;
  MovieCastStatus get statusmovie => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CubitccastStateCopyWith<CubitccastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CubitccastStateCopyWith<$Res> {
  factory $CubitccastStateCopyWith(
          CubitccastState value, $Res Function(CubitccastState) then) =
      _$CubitccastStateCopyWithImpl<$Res>;
  $Res call({List<Cast>? cast, MovieCastStatus statusmovie, dynamic error});
}

/// @nodoc
class _$CubitccastStateCopyWithImpl<$Res>
    implements $CubitccastStateCopyWith<$Res> {
  _$CubitccastStateCopyWithImpl(this._value, this._then);

  final CubitccastState _value;
  // ignore: unused_field
  final $Res Function(CubitccastState) _then;

  @override
  $Res call({
    Object? cast = freezed,
    Object? statusmovie = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      statusmovie: statusmovie == freezed
          ? _value.statusmovie
          : statusmovie // ignore: cast_nullable_to_non_nullable
              as MovieCastStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_CubitccastStateCopyWith<$Res>
    implements $CubitccastStateCopyWith<$Res> {
  factory _$$_CubitccastStateCopyWith(
          _$_CubitccastState value, $Res Function(_$_CubitccastState) then) =
      __$$_CubitccastStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Cast>? cast, MovieCastStatus statusmovie, dynamic error});
}

/// @nodoc
class __$$_CubitccastStateCopyWithImpl<$Res>
    extends _$CubitccastStateCopyWithImpl<$Res>
    implements _$$_CubitccastStateCopyWith<$Res> {
  __$$_CubitccastStateCopyWithImpl(
      _$_CubitccastState _value, $Res Function(_$_CubitccastState) _then)
      : super(_value, (v) => _then(v as _$_CubitccastState));

  @override
  _$_CubitccastState get _value => super._value as _$_CubitccastState;

  @override
  $Res call({
    Object? cast = freezed,
    Object? statusmovie = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CubitccastState(
      cast: cast == freezed
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      statusmovie: statusmovie == freezed
          ? _value.statusmovie
          : statusmovie // ignore: cast_nullable_to_non_nullable
              as MovieCastStatus,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_CubitccastState implements _CubitccastState {
  const _$_CubitccastState(
      {final List<Cast>? cast,
      this.statusmovie = MovieCastStatus.initial,
      this.error = ''})
      : _cast = cast;

  final List<Cast>? _cast;
  @override
  List<Cast>? get cast {
    final value = _cast;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final MovieCastStatus statusmovie;
  @override
  @JsonKey()
  final dynamic error;

  @override
  String toString() {
    return 'CubitccastState(cast: $cast, statusmovie: $statusmovie, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CubitccastState &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality()
                .equals(other.statusmovie, statusmovie) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(statusmovie),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CubitccastStateCopyWith<_$_CubitccastState> get copyWith =>
      __$$_CubitccastStateCopyWithImpl<_$_CubitccastState>(this, _$identity);
}

abstract class _CubitccastState implements CubitccastState {
  const factory _CubitccastState(
      {final List<Cast>? cast,
      final MovieCastStatus statusmovie,
      final dynamic error}) = _$_CubitccastState;

  @override
  List<Cast>? get cast => throw _privateConstructorUsedError;
  @override
  MovieCastStatus get statusmovie => throw _privateConstructorUsedError;
  @override
  dynamic get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CubitccastStateCopyWith<_$_CubitccastState> get copyWith =>
      throw _privateConstructorUsedError;
}
