// ignore_for_file: depend_on_referenced_packages
import 'package:model/model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movidetail_state.freezed.dart';

enum MovieDetailStatus {
  initial,
  loading,

  movidetail,

  error;
}

@freezed
class MovidetailState with _$MovidetailState {
  const factory MovidetailState({
    final VideoDetails? videodetail,
    @Default(MovieDetailStatus.initial) MovieDetailStatus statusmovie,
    @Default('') error,
  }) = _MovidetailState;
}
