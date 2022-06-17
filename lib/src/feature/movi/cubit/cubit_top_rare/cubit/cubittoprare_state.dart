// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/model.dart';
// ignore: unused_import

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
