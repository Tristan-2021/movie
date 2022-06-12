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

  Future<void> getVideos(int entero) async {
    try {
      if (movies.length >= 60) {
        callgetvideo();
      } else {
        if (entero >= 19) {
          emit(state.copyWith(
            generlstatus: CubitGeneralSatus.loading,
          ));
          var date = await serviceMovi.getMovie();
          movies.addAll(date);
          emit(state.copyWith(
              generlstatus: CubitGeneralSatus.video, video: date));
        } else {
          if (movies.isEmpty) {
            emit(state.copyWith(
              generlstatus: CubitGeneralSatus.loading,
            ));
            var date = await serviceMovi.getMovie();
            movies.addAll(date);
            callgetvideo();
          } else {
            callgetvideo();
          }
        }
      }
    } on MoviException catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.errors));
    } catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.toString()));
    }
  }

  callgetvideo() {
    emit(state.copyWith(generlstatus: CubitGeneralSatus.video, video: movies));
  }
  // //Todo:TopRare
  // Future<void> getMoviesToprare(int idMovi) async {
  //   emit(state.copyWith(
  //     generlstatus: CubitGeneralSatus.loading,
  //   ));
  //   try {
  //     var cast = await serviceMovi.getActor(idMovi.toString());
  //     if (cast.isNotEmpty) {
  //       emit(state.copyWith(
  //           generlstatus: CubitGeneralSatus.cast, cast: cast.sublist(0, 4)));
  //     } else {
  //       emit(state.copyWith(
  //           generlstatus: CubitGeneralSatus.error,
  //           error: 'No tenemos actores'));
  //     }
  //   } catch (e) {
  //     emit(state.copyWith(
  //         generlstatus: CubitGeneralSatus.error, error: e.toString()));
  //   }
  // }

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

  //todo: ACtos
  Future<void> getActors(int idMovi) async {
    emit(state.copyWith(
      generlstatus: CubitGeneralSatus.loading,
    ));
    try {
      var cast = await serviceMovi.getActor(idMovi.toString());
      if (cast.isNotEmpty) {
        emit(state.copyWith(
            generlstatus: CubitGeneralSatus.cast, cast: cast.sublist(0, 4)));
      } else {
        emit(state.copyWith(
            generlstatus: CubitGeneralSatus.error,
            error: 'No tenemos actores'));
      }
    } catch (e) {
      emit(state.copyWith(
          generlstatus: CubitGeneralSatus.error, error: e.toString()));
    }
  }
}
