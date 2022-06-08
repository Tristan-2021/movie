// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_reutilizable.dart';

class ItemsMoviRecomend extends StatelessWidget {
  const ItemsMoviRecomend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitmovieCubit, CubitmovieState>(
      builder: (context, state) {
        switch (state.statusmovie) {
          case MovieStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case MovieStatus.movies:
            return ItemsMovies(
              movies: state.movies!,
              rareOrRecomen: 'reco',
            );

          case MovieStatus.error:
            return Center(
              child: Column(
                children: [
                  Text(state.error),
                  TextButton(
                      onPressed: () {
                        context.read<CubitmovieCubit>().getMovies();
                      },
                      child: const Text('Go Back..Here..!'))
                ],
              ),
            );
          case MovieStatus.initial:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case MovieStatus.cast:
            return const Center(
              child: Text('no foutn'),
            );
          case MovieStatus.movidetail:
            return const Center(
              child: Text('no foutn'),
            );
        }
      },
    );
  }
}
