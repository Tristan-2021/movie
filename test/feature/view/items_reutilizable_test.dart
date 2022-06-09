import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_reutilizable.dart';

import '../fake/fake_movie.dart';

void main() {
  group('ItemsMoviesReutilizable', () {
    testWidgets('Render PageViewBuildere', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ItemsMoviesReutilizable(
          movies: movies13,
          rareOrRecomen: 'rare',
        ),
      ));

      await tester.tap(find.byKey(
        const Key('View_movi_2'),
      ));
      // expect(find., matcher)
    });
  });
}
