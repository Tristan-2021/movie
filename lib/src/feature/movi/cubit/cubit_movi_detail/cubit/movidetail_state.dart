import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
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
