import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_state.dart';

import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';

class MockCubiMovie extends MockCubit<CubitmovieState>
    implements CubitmovieCubit {}

class MockCubiMovieDetails extends MockCubit<MovidetailState>
    implements MovidetailCubit {}

class MockCubiToprare extends MockCubit<CubittoprareState>
    implements CubittoprareCubit {}

class MockCubiCast extends MockCubit<CubitccastCubit>
    implements CubitccastState {}

class MockServiceMovi extends Mock implements ServiceMovi {}
