import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_movi_recomend.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_reutilizable.dart';

import '../fake/fake_movie.dart';
import '../fake/mocks.dart';

void main() {
  late final MockCubiMovie mockCubiMovie;

  setUpAll(() {
    mockCubiMovie = MockCubiMovie();
  });

  group('test View ItemsMoviRecomend ', () {
    testWidgets('Emist State  MovieStatus.loading', (tester) async {
      when(() => mockCubiMovie.state).thenAnswer(
          (_) => const CubitmovieState(statusmovie: MovieStatus.loading));

      await tester.pumpWidget(BlocProvider<CubitmovieCubit>(
        lazy: false,
        create: (context) => mockCubiMovie,
        child: const MaterialApp(
          home: ItemsMoviRecomend(),
        ),
      ));
      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('Emist State  MovieStatus.loading', (tester) async {
      when(() => mockCubiMovie.state).thenAnswer(
          (_) => const CubitmovieState(statusmovie: MovieStatus.loading));

      await tester.pumpWidget(BlocProvider<CubitmovieCubit>(
        lazy: false,
        create: (context) => mockCubiMovie,
        child: const MaterialApp(
          home: ItemsMoviRecomend(),
        ),
      ));
      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('Emist State  MovieStatus [MovieStatus.movies]',
        (tester) async {
      when(() => mockCubiMovie.state).thenAnswer((_) =>
          CubitmovieState(statusmovie: MovieStatus.movies, movies: movies));

      await tester.pumpWidget(BlocProvider<CubitmovieCubit>(
        lazy: false,
        create: (context) => mockCubiMovie,
        child: const MaterialApp(
          home: ItemsMoviRecomend(),
        ),
      ));

      await tester.pump();
      expect(find.byType(ItemsMoviesReutilizable), findsOneWidget);
    });
    testWidgets('Emist State  MovieStatus [MovieStatus.error]', (tester) async {
      when(() => mockCubiMovie.state).thenAnswer((_) => const CubitmovieState(
            statusmovie: MovieStatus.error,
          ));

      await tester.pumpWidget(BlocProvider<CubitmovieCubit>(
        lazy: false,
        create: (context) => mockCubiMovie,
        child: const MaterialApp(
          home: ItemsMoviRecomend(),
        ),
      ));

      await tester.pump();
      expect(find.byType(Column), findsOneWidget);
    });
    testWidgets('Emist State  MovieStatus [MovieStatus.error]  OnTap Buttons',
        (tester) async {
      when(() => mockCubiMovie.state).thenAnswer((_) => const CubitmovieState(
            statusmovie: MovieStatus.error,
          ));
      when(() => mockCubiMovie.getMovies()).thenAnswer((_) => Future.value());

      await tester.pumpWidget(BlocProvider<CubitmovieCubit>(
        lazy: false,
        create: (context) => mockCubiMovie,
        child: const MaterialApp(
          home: ItemsMoviRecomend(),
        ),
      ));

      await tester.pump();
      await tester.tap(find.byKey(const Key('ontap_buttons_getmovies')));

      verify(() => mockCubiMovie.getMovies()).called(1);
    });
  });
}
