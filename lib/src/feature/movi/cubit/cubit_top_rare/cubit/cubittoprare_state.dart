// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:movi/src/feature/domain/model/movie.state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
part 'cubittoprare_state.freezed.dart';

enum MovieTopRareStatus {
  initial,
  loading,
  movistoprare,
  error;
}

@freezed
class CubittoprareState with _$CubittoprareState {
  const factory CubittoprareState({
    final List<Movies>? tapare,
    @Default(MovieTopRareStatus.initial) MovieTopRareStatus statusmovie,
    @Default('') error,
  }) = _CubittoprareState;
}
