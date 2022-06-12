// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:movi/src/core/exceptions/exception.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_general/cubit/cubitgeneral_state.dart';

class CubitgeneralCubit extends Cubit<CubitgeneralState> {
  ServiceMovi serviceMovi;

  CubitgeneralCubit({required this.serviceMovi})
      : super(const CubitgeneralState());

  List<Movies> movies = [];
  List<Movies> moviesrare = [];

  Future<void> getVideos() async {
    emit(state.copyWith(
      generlstatus: CubitGeneralSatus.loading,
    ));

    try {
      if (movies.length >= 3) {
        emit(state.copyWith(
            generlstatus: CubitGeneralSatus.video, video: movies));
      } else {
        var date = await serviceMovi.getMovie();

        movies.addAll([...date]);
        emit(
            state.copyWith(generlstatus: CubitGeneralSatus.video, video: date));
      }

      if (movies.isNotEmpty) {
        emit(state.copyWith(
            generlstatus: CubitGeneralSatus.video, video: movies));
      } else {
        var date = await serviceMovi.getMovie();
        movies.addAll(date);

        emit(
            state.copyWith(generlstatus: CubitGeneralSatus.video, video: date));
      }
    } on MoviException catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.errors));
    } catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.toString()));
    }
  }

  //Todo:TopRare
  Future<void> getMoviesToprare() async {
    emit(state.copyWith(
      generlstatus: CubitGeneralSatus.loading,
    ));

    try {
      if (moviesrare.length >= 60) {
        emit(state.copyWith(
            generlstatus: CubitGeneralSatus.videotoprare, video: movies));
      } else {
        var date = await serviceMovi.getToprate();
        moviesrare.addAll([...date]);

        emit(state.copyWith(
            generlstatus: CubitGeneralSatus.videotoprare, video: date));
      }
    } on MoviException catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.errors));
    } catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.toString()));
    }
  }

  //Todo: VideoDetail
  Future<void> getVideoDetails(int idMovi) async {
    emit(state.copyWith(
      generlstatus: CubitGeneralSatus.loading,
    ));
    try {
      var videodetails = await serviceMovi.getDetails(idMovi.toString());

      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.videoDetail,
          videodetails: videodetails));
    } on MoviException catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.errors));
    } catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.toString()));
    }
  }

  //Todo:Search Movies

  Future<void> getMoviesSearch(String search) async {
    emit(state.copyWith(
      generlstatus: CubitGeneralSatus.loading,
    ));

    try {
      var date = await serviceMovi.getSearch(search);
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.videoSearch, videoSearchs: date));
    } on MoviException catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.errors));
    } catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.toString()));
    }
  }
}
