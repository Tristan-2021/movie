// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model/model.dart';

part 'cubitccast_state.freezed.dart';

enum MovieCastStatus {
  initial,
  loading,

  castdet,

  error;
}

@freezed
class CubitccastState with _$CubitccastState {
  const factory CubitccastState({
    final List<Cast>? cast,
    @Default(MovieCastStatus.initial) MovieCastStatus statusmovie,
    @Default('') error,
  }) = _CubitccastState;
}
