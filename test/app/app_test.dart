import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movi/src/app/app.dart';
import 'package:movi/src/app/welcome.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';

import '../feature/fake/fake_movie.dart';
import '../feature/fake/mocks.dart';

void main() {
  late final MockServiceMovi mockServiceMovi;
  late final MockCubiCast mockCubiCast;
  late final MockCubiMovieDetails mockCubiMovieDetails;
  late final MockCubiToprare mockCubiToprare;
  late final MockCubiMovie mockCubiMovie;
  setUpAll(() {
    mockServiceMovi = MockServiceMovi();
    mockCubiMovie = MockCubiMovie();
    mockCubiCast = MockCubiCast();
    mockCubiMovieDetails = MockCubiMovieDetails();
    mockCubiToprare = MockCubiToprare();
  });

  group('My App', () {
    testWidgets('Welcome ', (tester) async {
      await tester.pumpWidget((const MyApp()));

      expect(find.byType(MyApp), findsOneWidget);
    });
  });

  group('Found Welcome', () {
    testWidgets('Render View Welcome ', (tester) async {
      when(() => mockCubiMovie.state).thenAnswer(
          (_) => const CubitmovieState(statusmovie: MovieStatus.loading));
      when(() => mockCubiMovie.state)
          .thenAnswer((_) => CubitmovieState(movies: movies));

      //:CubitTopRare
      when(() => mockCubiToprare.state).thenAnswer((_) =>
          const CubittoprareState(statusmovie: MovieTopRareStatus.loading));
      when(() => mockCubiToprare.state)
          .thenAnswer((_) => CubittoprareState(tapare: movies));

      await tester.pumpWidget(RepositoryProvider(
        create: (_) => MockServiceMovi(),
        child: MaterialApp(
          home: MultiBlocProvider(providers: [
            BlocProvider(
                create: (context) => CubitmovieCubit(
                    serviceMovi: context.read<MockServiceMovi>())
                  ..getMovies()),
            BlocProvider(
              create: (context) =>
                  MovidetailCubit(context.read<MockServiceMovi>()),
            ),
            BlocProvider(
              create: (context) =>
                  CubitccastCubit(context.read<MockServiceMovi>()),
            ),
            BlocProvider(
              create: (context) =>
                  CubittoprareCubit(context.read<MockServiceMovi>())
                    ..getMoviesToprare(),
            ),
          ], child: const Welcome()),
        ),
      ));

      await tester.pumpAndSettle();
      expect(find.byKey(const Key('_column_principal')), findsOneWidget);
    });
  });
}
