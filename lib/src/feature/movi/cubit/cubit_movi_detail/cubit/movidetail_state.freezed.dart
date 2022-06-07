// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movidetail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovidetailState {
  VideoDetails? get videodetail => throw _privateConstructorUsedError;
  MovieDetailStatus get statusmovie => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovidetailStateCopyWith<MovidetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovidetailStateCopyWith<$Res> {
  factory $MovidetailStateCopyWith(
          MovidetailState value, $Res Function(MovidetailState) then) =
      _$MovidetailStateCopyWithImpl<$Res>;
  $Res call(
      {VideoDetails? videodetail,
      MovieDetailStatus statusmovie,
      dynamic error});

  $VideoDetailsCopyWith<$Res>? get videodetail;
}

/// @nodoc
class _$MovidetailStateCopyWithImpl<$Res>
    implements $MovidetailStateCopyWith<$Res> {
  _$MovidetailStateCopyWithImpl(this._value, this._then);

  final MovidetailState _value;
  // ignore: unused_field
  final $Res Function(MovidetailState) _then;

  @override
  $Res call({
    Object? videodetail = freezed,
    Object? statusmovie = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      videodetail: videodetail == freezed
          ? _value.videodetail
          : videodetail // ignore: cast_nullable_to_non_nullable
              as VideoDetails?,
      statusmovie: statusmovie == freezed
          ? _value.statusmovie
          : statusmovie // ignore: cast_nullable_to_non_nullable
              as MovieDetailStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  @override
  $VideoDetailsCopyWith<$Res>? get videodetail {
    if (_value.videodetail == null) {
      return null;
    }

    return $VideoDetailsCopyWith<$Res>(_value.videodetail!, (value) {
      return _then(_value.copyWith(videodetail: value));
    });
  }
}

/// @nodoc
abstract class _$$_MovidetailStateCopyWith<$Res>
    implements $MovidetailStateCopyWith<$Res> {
  factory _$$_MovidetailStateCopyWith(
          _$_MovidetailState value, $Res Function(_$_MovidetailState) then) =
      __$$_MovidetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {VideoDetails? videodetail,
      MovieDetailStatus statusmovie,
      dynamic error});

  @override
  $VideoDetailsCopyWith<$Res>? get videodetail;
}

/// @nodoc
class __$$_MovidetailStateCopyWithImpl<$Res>
    extends _$MovidetailStateCopyWithImpl<$Res>
    implements _$$_MovidetailStateCopyWith<$Res> {
  __$$_MovidetailStateCopyWithImpl(
      _$_MovidetailState _value, $Res Function(_$_MovidetailState) _then)
      : super(_value, (v) => _then(v as _$_MovidetailState));

  @override
  _$_MovidetailState get _value => super._value as _$_MovidetailState;

  @override
  $Res call({
    Object? videodetail = freezed,
    Object? statusmovie = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_MovidetailState(
      videodetail: videodetail == freezed
          ? _value.videodetail
          : videodetail // ignore: cast_nullable_to_non_nullable
              as VideoDetails?,
      statusmovie: statusmovie == freezed
          ? _value.statusmovie
          : statusmovie // ignore: cast_nullable_to_non_nullable
              as MovieDetailStatus,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_MovidetailState implements _MovidetailState {
  const _$_MovidetailState(
      {this.videodetail,
      this.statusmovie = MovieDetailStatus.initial,
      this.error = ''});

  @override
  final VideoDetails? videodetail;
  @override
  @JsonKey()
  final MovieDetailStatus statusmovie;
  @override
  @JsonKey()
  final dynamic error;

  @override
  String toString() {
    return 'MovidetailState(videodetail: $videodetail, statusmovie: $statusmovie, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovidetailState &&
            const DeepCollectionEquality()
                .equals(other.videodetail, videodetail) &&
            const DeepCollectionEquality()
                .equals(other.statusmovie, statusmovie) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(videodetail),
      const DeepCollectionEquality().hash(statusmovie),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_MovidetailStateCopyWith<_$_MovidetailState> get copyWith =>
      __$$_MovidetailStateCopyWithImpl<_$_MovidetailState>(this, _$identity);
}

abstract class _MovidetailState implements MovidetailState {
  const factory _MovidetailState(
      {final VideoDetails? videodetail,
      final MovieDetailStatus statusmovie,
      final dynamic error}) = _$_MovidetailState;

  @override
  VideoDetails? get videodetail => throw _privateConstructorUsedError;
  @override
  MovieDetailStatus get statusmovie => throw _privateConstructorUsedError;
  @override
  dynamic get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovidetailStateCopyWith<_$_MovidetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
