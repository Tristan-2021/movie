// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';

class CubitmovieCubit extends Cubit<CubitmovieState> {
  ServiceMovi serviceMovi;
  CubitmovieCubit({required this.serviceMovi}) : super(const CubitmovieState());

  Future<void> getMovies() async {
    emit(state.copyWith(
      statusmovie: MovieStatus.loading,
    ));

    try {
      var date = await serviceMovi.getMovie();
      emit(state.copyWith(statusmovie: MovieStatus.movies, movies: date));
    } catch (e) {
      emit(state.copyWith(statusmovie: MovieStatus.error, error: e.toString()));
    }
  }

  Future<void> getVideoDetails(String idMovi) async {
    emit(state.copyWith(
      statusmovie: MovieStatus.loading,
    ));
    try {
      var videodetails = await serviceMovi.getDetails(idMovi);

      emit(state.copyWith(
          statusmovie: MovieStatus.movidetail, videodetail: videodetails));
    } catch (e) {
      emit(state.copyWith(statusmovie: MovieStatus.error, error: e.toString()));
    }
  }
}
