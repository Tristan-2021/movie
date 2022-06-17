// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:model/model.dart';

import 'package:movi/src/core/exceptions/exception.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_state.dart';

class CubittoprareCubit extends Cubit<CubittoprareState> {
  ServiceMovi serviceMovi;

  CubittoprareCubit(this.serviceMovi) : super(const CubittoprareState());
  List<Movies> movies = [];
  Future<void> getMoviesToprare() async {
    emit(state.copyWith(
      statusmovie: MovieTopRareStatus.loading,
    ));

    try {
      if (movies.length >= 60) {
        emit(state.copyWith(
            statusmovie: MovieTopRareStatus.movistoprare, tapare: movies));
      } else {
        var date = await serviceMovi.getToprate();
        movies.addAll([...date]);

        emit(state.copyWith(
            statusmovie: MovieTopRareStatus.movistoprare, tapare: date));
      }
    } on MoviException catch (e) {
      emit(state.copyWith(
          statusmovie: MovieTopRareStatus.error, error: e.errors));
    } catch (e) {
      emit(state.copyWith(
          statusmovie: MovieTopRareStatus.error, error: e.toString()));
    }
  }
}
