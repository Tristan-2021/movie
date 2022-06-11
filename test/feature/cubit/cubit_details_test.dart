import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movi/src/core/exceptions/exception.dart';
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_state.dart';

import '../fake/fakevideo_Details.dart';
import '../fake/mocks.dart';

void main() {
  late MovidetailCubit mockCubimoviedetails;

  late ServiceMovi mockServiceMovi;

  setUp(() {
    mockServiceMovi = MockServiceMovi();

    mockCubimoviedetails = MovidetailCubit(mockServiceMovi);
  });
  group('emtits State CubitMovieDetails ', () {
    blocTest<MovidetailCubit, MovidetailState>(
        'return data and MovieStatus.movies',
        setUp: () {
          when(() => mockServiceMovi.getDetails('12353'))
              .thenAnswer((_) async => videodetails);
        },
        act: (cubit) {
          cubit.getVideoDetails(12353);
        },
        build: () => MovidetailCubit(mockServiceMovi),
        expect: () {
          return <MovidetailState>[
            const MovidetailState(statusmovie: MovieDetailStatus.loading),
            MovidetailState(
                videodetail: videodetails,
                statusmovie: MovieDetailStatus.movidetail)
          ];
        },
        tearDown: () {
          mockCubimoviedetails.close();
        });
    blocTest<MovidetailCubit, MovidetailState>(' MovieDetailsStatus.error',
        setUp: () {
          when(() => mockCubimoviedetails.getVideoDetails(12353))
              .thenThrow(const MoviException('error Server'));
        },
        act: (cubit) {
          cubit.getVideoDetails(12353);
        },
        build: () => MovidetailCubit(mockServiceMovi),
        expect: () {
          return <MovidetailState>[
            const MovidetailState(statusmovie: MovieDetailStatus.loading),
            const MovidetailState(
                statusmovie: MovieDetailStatus.error, error: 'error Server')
          ];
        },
        tearDown: () {
          mockCubimoviedetails.close();
        });

    blocTest<MovidetailCubit, MovidetailState>(
        'return  MovieStatus.error but Unkown Error',
        setUp: () {
          when(() => mockCubimoviedetails.getVideoDetails(12353))
              .thenThrow(Exception());
        },
        act: (cubit) {
          cubit.getVideoDetails(12353);
        },
        build: () => MovidetailCubit(mockServiceMovi),
        expect: () {
          return <MovidetailState>[
            const MovidetailState(statusmovie: MovieDetailStatus.loading),
            const MovidetailState(
                statusmovie: MovieDetailStatus.error, error: 'Exception')
          ];
        },
        tearDown: () {
          mockCubimoviedetails.close();
        });
  });
}
