// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/model.dart';

part 'cubitmovie_state.freezed.dart';

enum MovieStatus {
  loading,
  movies,
  error,
  searchmovie;
}

@freezed
class CubitmovieState with _$CubitmovieState {
  const factory CubitmovieState({
    final List<Movies>? movies,
    final List<Cast>? cast,
    final List<SearchVideoDetails>? videodetail,
    @Default(MovieStatus.loading) MovieStatus statusmovie,
    @Default('') error,
  }) = _CubitmovieState;
}
