// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:movi/src/core/exceptions/exception.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_state.dart';

class CubittoprareCubit extends Cubit<CubittoprareState> {
  ServiceMovi serviceMovi;

  CubittoprareCubit(this.serviceMovi) : super(const CubittoprareState());

  Future<void> getMoviesToprare() async {
    emit(state.copyWith(
      statusmovie: MovieTopRareStatus.loading,
    ));

    try {
      var date = await serviceMovi.getPopualr();
      emit(state.copyWith(
          statusmovie: MovieTopRareStatus.movistoprare, tapare: date));
    } on MoviException catch (e) {
      emit(state.copyWith(
          statusmovie: MovieTopRareStatus.error, error: e.errors));
    } catch (e) {
      emit(state.copyWith(
          statusmovie: MovieTopRareStatus.error, error: e.toString()));
    }
  }
}
