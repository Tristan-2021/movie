// ignore_for_file: depend_on_referenced_packages

import 'package:movi/src/feature/domain/model/casts_state.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cubitmovie_state.freezed.dart';

enum MovieStatus {
  loading,
  movies,
  error;
}

@freezed
class CubitmovieState with _$CubitmovieState {
  const factory CubitmovieState({
    final List<Movies>? movies,
    final List<Cast>? cast,
    final VideoDetails? videodetail,
    @Default(MovieStatus.loading) MovieStatus statusmovie,
    @Default('') error,
  }) = _CubitmovieState;
}
