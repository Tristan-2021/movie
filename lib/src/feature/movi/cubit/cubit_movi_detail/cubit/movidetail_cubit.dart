import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_state.dart';

class MovidetailCubit extends Cubit<MovidetailState> {
  ServiceMovi serviceMovi;

  MovidetailCubit(this.serviceMovi) : super(MovidetailState());

  Future<void> getVideoDetails(String idMovi) async {
    // emit(state.copyWith(
    //   statusmovie: MovieStatus.loading,
    // ));
    // try {
    //   var videodetails = await serviceMovi.getDetails(idMovi);
    //   print(videodetails);
    //   emit(state.copyWith(
    //       statusmovie: MovieStatus.movidetail, videodetail: videodetails));
    // } catch (e) {
    //   emit(state.copyWith(statusmovie: MovieStatus.error, error: e.toString()));
    // }
  }
}
