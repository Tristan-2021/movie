import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_movi_recomend.dart';

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
  });
}
