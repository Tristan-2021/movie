import 'package:movi/src/feature/domain/model/casts_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
