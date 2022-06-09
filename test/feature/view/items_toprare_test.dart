import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_state.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_movi_top_rare.dart';

import '../fake/mocks.dart';

void main() {
  late final MockCubiToprare mockCubiToprare;

  setUpAll(() {
    mockCubiToprare = MockCubiToprare();
  });

  group('render each Widget depending on the emitted State [ItemsTopRare]', () {
    testWidgets('Emist State  MovieStatus.loading', (tester) async {
      when(() => mockCubiToprare.state).thenAnswer((_) =>
          const CubittoprareState(statusmovie: MovieTopRareStatus.loading));

      await tester.pumpWidget(BlocProvider<CubittoprareCubit>(
        lazy: false,
        create: (context) => mockCubiToprare,
        child: const MaterialApp(
          home: ItemsTopRare(),
        ),
      ));
      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
