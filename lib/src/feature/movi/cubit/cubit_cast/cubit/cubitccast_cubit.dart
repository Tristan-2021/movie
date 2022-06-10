// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_state.dart';

class CubitccastCubit extends Cubit<CubitccastState> {
  ServiceMovi serviceMovi;

  CubitccastCubit(this.serviceMovi) : super(const CubitccastState());

  Future<void> getActors(int idMovi) async {
    emit(state.copyWith(
      statusmovie: MovieCastStatus.loading,
    ));
    try {
      var cast = await serviceMovi.getActor(idMovi.toString());
      if (cast.isNotEmpty) {
        emit(state.copyWith(
            statusmovie: MovieCastStatus.castdet, cast: cast.sublist(0, 4)));
      } else {
        emit(state.copyWith(
            statusmovie: MovieCastStatus.error, error: 'No tenemos actores'));
      }
    } catch (e) {
      emit(state.copyWith(
          statusmovie: MovieCastStatus.error, error: e.toString()));
    }
  }
}
