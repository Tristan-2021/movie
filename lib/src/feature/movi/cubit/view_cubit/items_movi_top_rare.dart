import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_state.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_reutilizable.dart';

class ItemsTopRare extends StatelessWidget {
  const ItemsTopRare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubittoprareCubit, CubittoprareState>(
      builder: (context, state) {
        switch (state.statusmovie) {
          case MovieTopRareStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case MovieTopRareStatus.movistoprare:
            return ItemsMoviesReutilizable(
              movies: state.tapare!,
              rareOrRecomen: 'rare',
            );

          case MovieTopRareStatus.error:
            return Center(
              child: TextButton(onPressed: () {}, child: Text(state.error)),
            );
          case MovieTopRareStatus.initial:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
