// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cubittoprare_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CubittoprareState {
  List<Movies>? get tapare => throw _privateConstructorUsedError;
  MovieTopRareStatus get statusmovie => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CubittoprareStateCopyWith<CubittoprareState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CubittoprareStateCopyWith<$Res> {
  factory $CubittoprareStateCopyWith(
          CubittoprareState value, $Res Function(CubittoprareState) then) =
      _$CubittoprareStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movies>? tapare, MovieTopRareStatus statusmovie, dynamic error});
}

/// @nodoc
class _$CubittoprareStateCopyWithImpl<$Res>
    implements $CubittoprareStateCopyWith<$Res> {
  _$CubittoprareStateCopyWithImpl(this._value, this._then);

  final CubittoprareState _value;
  // ignore: unused_field
  final $Res Function(CubittoprareState) _then;

  @override
  $Res call({
    Object? tapare = freezed,
    Object? statusmovie = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      tapare: tapare == freezed
          ? _value.tapare
          : tapare // ignore: cast_nullable_to_non_nullable
              as List<Movies>?,
      statusmovie: statusmovie == freezed
          ? _value.statusmovie
          : statusmovie // ignore: cast_nullable_to_non_nullable
              as MovieTopRareStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_CubittoprareStateCopyWith<$Res>
    implements $CubittoprareStateCopyWith<$Res> {
  factory _$$_CubittoprareStateCopyWith(_$_CubittoprareState value,
          $Res Function(_$_CubittoprareState) then) =
      __$$_CubittoprareStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Movies>? tapare, MovieTopRareStatus statusmovie, dynamic error});
}

/// @nodoc
class __$$_CubittoprareStateCopyWithImpl<$Res>
    extends _$CubittoprareStateCopyWithImpl<$Res>
    implements _$$_CubittoprareStateCopyWith<$Res> {
  __$$_CubittoprareStateCopyWithImpl(
      _$_CubittoprareState _value, $Res Function(_$_CubittoprareState) _then)
      : super(_value, (v) => _then(v as _$_CubittoprareState));

  @override
  _$_CubittoprareState get _value => super._value as _$_CubittoprareState;

  @override
  $Res call({
    Object? tapare = freezed,
    Object? statusmovie = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CubittoprareState(
      tapare: tapare == freezed
          ? _value._tapare
          : tapare // ignore: cast_nullable_to_non_nullable
              as List<Movies>?,
      statusmovie: statusmovie == freezed
          ? _value.statusmovie
          : statusmovie // ignore: cast_nullable_to_non_nullable
              as MovieTopRareStatus,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_CubittoprareState implements _CubittoprareState {
  const _$_CubittoprareState(
      {final List<Movies>? tapare,
      this.statusmovie = MovieTopRareStatus.initial,
      this.error = ''})
      : _tapare = tapare;

  final List<Movies>? _tapare;
  @override
  List<Movies>? get tapare {
    final value = _tapare;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final MovieTopRareStatus statusmovie;
  @override
  @JsonKey()
  final dynamic error;

  @override
  String toString() {
    return 'CubittoprareState(tapare: $tapare, statusmovie: $statusmovie, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CubittoprareState &&
            const DeepCollectionEquality().equals(other._tapare, _tapare) &&
            const DeepCollectionEquality()
                .equals(other.statusmovie, statusmovie) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tapare),
      const DeepCollectionEquality().hash(statusmovie),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CubittoprareStateCopyWith<_$_CubittoprareState> get copyWith =>
      __$$_CubittoprareStateCopyWithImpl<_$_CubittoprareState>(
          this, _$identity);
}

abstract class _CubittoprareState implements CubittoprareState {
  const factory _CubittoprareState(
      {final List<Movies>? tapare,
      final MovieTopRareStatus statusmovie,
      final dynamic error}) = _$_CubittoprareState;

  @override
  List<Movies>? get tapare => throw _privateConstructorUsedError;
  @override
  MovieTopRareStatus get statusmovie => throw _privateConstructorUsedError;
  @override
  dynamic get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CubittoprareStateCopyWith<_$_CubittoprareState> get copyWith =>
      throw _privateConstructorUsedError;
}
