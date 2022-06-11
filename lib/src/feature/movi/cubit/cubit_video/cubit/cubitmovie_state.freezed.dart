// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cubitmovie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CubitmovieState {
  List<Movies>? get movies => throw _privateConstructorUsedError;
  List<Cast>? get cast => throw _privateConstructorUsedError;
  List<SearchVideoDetails>? get videodetail =>
      throw _privateConstructorUsedError;
  MovieStatus get statusmovie => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CubitmovieStateCopyWith<CubitmovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CubitmovieStateCopyWith<$Res> {
  factory $CubitmovieStateCopyWith(
          CubitmovieState value, $Res Function(CubitmovieState) then) =
      _$CubitmovieStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movies>? movies,
      List<Cast>? cast,
      List<SearchVideoDetails>? videodetail,
      MovieStatus statusmovie,
      dynamic error});
}

/// @nodoc
class _$CubitmovieStateCopyWithImpl<$Res>
    implements $CubitmovieStateCopyWith<$Res> {
  _$CubitmovieStateCopyWithImpl(this._value, this._then);

  final CubitmovieState _value;
  // ignore: unused_field
  final $Res Function(CubitmovieState) _then;

  @override
  $Res call({
    Object? movies = freezed,
    Object? cast = freezed,
    Object? videodetail = freezed,
    Object? statusmovie = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movies>?,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      videodetail: videodetail == freezed
          ? _value.videodetail
          : videodetail // ignore: cast_nullable_to_non_nullable
              as List<SearchVideoDetails>?,
      statusmovie: statusmovie == freezed
          ? _value.statusmovie
          : statusmovie // ignore: cast_nullable_to_non_nullable
              as MovieStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_CubitmovieStateCopyWith<$Res>
    implements $CubitmovieStateCopyWith<$Res> {
  factory _$$_CubitmovieStateCopyWith(
          _$_CubitmovieState value, $Res Function(_$_CubitmovieState) then) =
      __$$_CubitmovieStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Movies>? movies,
      List<Cast>? cast,
      List<SearchVideoDetails>? videodetail,
      MovieStatus statusmovie,
      dynamic error});
}

/// @nodoc
class __$$_CubitmovieStateCopyWithImpl<$Res>
    extends _$CubitmovieStateCopyWithImpl<$Res>
    implements _$$_CubitmovieStateCopyWith<$Res> {
  __$$_CubitmovieStateCopyWithImpl(
      _$_CubitmovieState _value, $Res Function(_$_CubitmovieState) _then)
      : super(_value, (v) => _then(v as _$_CubitmovieState));

  @override
  _$_CubitmovieState get _value => super._value as _$_CubitmovieState;

  @override
  $Res call({
    Object? movies = freezed,
    Object? cast = freezed,
    Object? videodetail = freezed,
    Object? statusmovie = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CubitmovieState(
      movies: movies == freezed
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movies>?,
      cast: cast == freezed
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
      videodetail: videodetail == freezed
          ? _value._videodetail
          : videodetail // ignore: cast_nullable_to_non_nullable
              as List<SearchVideoDetails>?,
      statusmovie: statusmovie == freezed
          ? _value.statusmovie
          : statusmovie // ignore: cast_nullable_to_non_nullable
              as MovieStatus,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_CubitmovieState implements _CubitmovieState {
  const _$_CubitmovieState(
      {final List<Movies>? movies,
      final List<Cast>? cast,
      final List<SearchVideoDetails>? videodetail,
      this.statusmovie = MovieStatus.loading,
      this.error = ''})
      : _movies = movies,
        _cast = cast,
        _videodetail = videodetail;

  final List<Movies>? _movies;
  @override
  List<Movies>? get movies {
    final value = _movies;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Cast>? _cast;
  @override
  List<Cast>? get cast {
    final value = _cast;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SearchVideoDetails>? _videodetail;
  @override
  List<SearchVideoDetails>? get videodetail {
    final value = _videodetail;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final MovieStatus statusmovie;
  @override
  @JsonKey()
  final dynamic error;

  @override
  String toString() {
    return 'CubitmovieState(movies: $movies, cast: $cast, videodetail: $videodetail, statusmovie: $statusmovie, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CubitmovieState &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality()
                .equals(other._videodetail, _videodetail) &&
            const DeepCollectionEquality()
                .equals(other.statusmovie, statusmovie) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_movies),
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_videodetail),
      const DeepCollectionEquality().hash(statusmovie),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CubitmovieStateCopyWith<_$_CubitmovieState> get copyWith =>
      __$$_CubitmovieStateCopyWithImpl<_$_CubitmovieState>(this, _$identity);
}

abstract class _CubitmovieState implements CubitmovieState {
  const factory _CubitmovieState(
      {final List<Movies>? movies,
      final List<Cast>? cast,
      final List<SearchVideoDetails>? videodetail,
      final MovieStatus statusmovie,
      final dynamic error}) = _$_CubitmovieState;

  @override
  List<Movies>? get movies => throw _privateConstructorUsedError;
  @override
  List<Cast>? get cast => throw _privateConstructorUsedError;
  @override
  List<SearchVideoDetails>? get videodetail =>
      throw _privateConstructorUsedError;
  @override
  MovieStatus get statusmovie => throw _privateConstructorUsedError;
  @override
  dynamic get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CubitmovieStateCopyWith<_$_CubitmovieState> get copyWith =>
      throw _privateConstructorUsedError;
}
