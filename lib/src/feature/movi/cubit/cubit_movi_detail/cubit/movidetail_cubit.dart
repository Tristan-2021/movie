import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_state.dart';

class MovidetailCubit extends Cubit<MovidetailState> {
  ServiceMovi serviceMovi;

  MovidetailCubit(this.serviceMovi) : super(const MovidetailState());

  Future<void> getVideoDetails(String idMovi) async {
    emit(state.copyWith(
      statusmovie: MovieDetailStatus.loading,
    ));
    try {
      var videodetails = await serviceMovi.getDetails(idMovi);
      emit(state.copyWith(
          statusmovie: MovieDetailStatus.movidetail,
          videodetail: videodetails));
    } catch (e) {
      emit(state.copyWith(
          statusmovie: MovieDetailStatus.error, error: e.toString()));
    }
  }
}
