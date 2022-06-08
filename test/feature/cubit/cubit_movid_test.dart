import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movi/src/core/exceptions/exception.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';

import '../fake/fake_movie.dart';
import '../fake/mocks.dart';

void main() {
  late final CubitmovieCubit mockCubimovie;

  late final ServiceMovi mockServiceMovi;

  setUpAll(() {
    mockServiceMovi = MockServiceMovi();

    mockCubimovie = CubitmovieCubit(serviceMovi: mockServiceMovi);
  });
  group('emtits State CubitMovie ', () {
    blocTest<CubitmovieCubit, CubitmovieState>(
        'return data and MovieStatus.movies',
        setUp: () {
          when(() => mockServiceMovi.getMovie())
              .thenAnswer((invocation) async => movies);
        },
        act: (cubit) {
          cubit.getMovies();
        },
        build: () => CubitmovieCubit(serviceMovi: mockServiceMovi),
        expect: () {
          return <CubitmovieState>[
            const CubitmovieState(statusmovie: MovieStatus.loading),
            CubitmovieState(movies: movies, statusmovie: MovieStatus.movies)
          ];
        },
        tearDown: () {
          mockCubimovie.close();
        });

    blocTest<CubitmovieCubit, CubitmovieState>(
        'the test passes, because if it stores the movies of each call',
        setUp: () {
          //Todo: we didn't configure a behavior because we didn't make the call to [getMovie]
        },
        act: (cubit) {
          cubit.movies.addAll(movies);
          cubit.getMovies();
        },
        build: () => CubitmovieCubit(serviceMovi: mockServiceMovi),
        expect: () {
          return <CubitmovieState>[
            const CubitmovieState(statusmovie: MovieStatus.loading),
            CubitmovieState(movies: movies, statusmovie: MovieStatus.movies)
          ];
        },
        tearDown: () {
          mockCubimovie.close();
        });

    blocTest<CubitmovieCubit, CubitmovieState>(
        'return data and MovieStatus.error',
        setUp: () {
          when(() => mockServiceMovi.getMovie())
              .thenThrow(MoviException('error Server'));
        },
        act: (cubit) {
          cubit.getMovies();
        },
        build: () => CubitmovieCubit(serviceMovi: mockServiceMovi),
        expect: () {
          return <CubitmovieState>[
            const CubitmovieState(statusmovie: MovieStatus.loading),
            const CubitmovieState(
                statusmovie: MovieStatus.error, error: 'error Server')
          ];
        },
        tearDown: () {
          mockCubimovie.close();
        });

    blocTest<CubitmovieCubit, CubitmovieState>(
        'return data and MovieStatus.error but Unkown Error',
        setUp: () {
          when(() => mockServiceMovi.getMovie()).thenThrow(Exception());
        },
        act: (cubit) {
          cubit.getMovies();
        },
        build: () => CubitmovieCubit(serviceMovi: mockServiceMovi),
        expect: () {
          return <CubitmovieState>[
            const CubitmovieState(statusmovie: MovieStatus.loading),
            const CubitmovieState(
                statusmovie: MovieStatus.error, error: 'Exception')
          ];
        },
        tearDown: () {
          mockCubimovie.close();
        });
  });
}
