// ignore_for_file: depend_on_referenced_packages, unrelated_type_equality_checks

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:movi/src/core/exceptions/exception.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';

class CubitmovieCubit extends Cubit<CubitmovieState> {
  ServiceMovi serviceMovi;
  CubitmovieCubit({required this.serviceMovi}) : super(const CubitmovieState());

  List<Movies> movies = [];
  Future<void> getMovies() async {
    emit(state.copyWith(
      statusmovie: MovieStatus.loading,
    ));

    try {
      if (movies.length >= 3) {
        emit(state.copyWith(statusmovie: MovieStatus.movies, movies: movies));
      } else {
        var date = await serviceMovi.getMovies1();

        movies.addAll([...date]);
        emit(state.copyWith(statusmovie: MovieStatus.movies, movies: date));
      }

      if (movies.isNotEmpty) {
        emit(state.copyWith(statusmovie: MovieStatus.movies, movies: movies));
      } else {
        var date = await serviceMovi.getMovies1();
        movies.addAll(date);

        emit(state.copyWith(statusmovie: MovieStatus.movies, movies: date));
      }
    } on MoviException catch (e) {
      emit(state.copyWith(statusmovie: MovieStatus.error, error: e.errors));
    } catch (e, t) {
      if (e is TimeoutException) {
        emit(state.copyWith(
            statusmovie: MovieStatus.error,
            error: 'Tiene un internet muy lento..!'));
      } else {
        emit(state.copyWith(
            statusmovie: MovieStatus.error, error: t.toString()));
      }
    }
  }

  Future<void> getMoviesSearch(String search) async {
    emit(state.copyWith(
      statusmovie: MovieStatus.loading,
    ));

    try {
      var date = await serviceMovi.getSearch(search);
      emit(state.copyWith(
          statusmovie: MovieStatus.searchmovie, videodetail: date));
    } on MoviException catch (e) {
      emit(state.copyWith(statusmovie: MovieStatus.error, error: e.errors));
    } catch (e) {
      emit(state.copyWith(statusmovie: MovieStatus.error, error: e.toString()));
    }
  }

  Movies searchMovieList(String id) {
    return movies.firstWhere((element) => element.id == id);
  }
}
