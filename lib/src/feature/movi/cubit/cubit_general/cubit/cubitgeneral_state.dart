// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movi/src/feature/domain/model/casts_state.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
part 'cubitgeneral_state.freezed.dart';

enum CubitGeneralSatus {
  loading,
  video,
  cast,
  videotoprare,
  videoDetail,
  videoSearch,
  error,
}

@freezed
class CubitgeneralState with _$CubitgeneralState {
  const factory CubitgeneralState({
    final List<Movies>? video,
    final List<Cast>? cast,
    final List<SearchVideoDetails>? videoSearchs,
    final List<Movies>? videorateTop,
    final VideoDetails? videodetails,
    @Default(CubitGeneralSatus.loading) CubitGeneralSatus generlstatus,
    @Default('') error,
  }) = _CubitgeneralState;
}
