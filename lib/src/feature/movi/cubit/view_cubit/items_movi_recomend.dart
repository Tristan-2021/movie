// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';

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
            return ItemsMoviesReutilizable<Movies>(
              movies: state.movies!,
              rareOrRecomen: 'reco',
            );

          case MovieStatus.error:
            return Center(
              child: Column(
                children: [
                  Text(state.error),
                  TextButton(
                      key: const Key('ontap_buttons_getmovies'),
                      onPressed: () {
                        context.read<CubitmovieCubit>().getMovies();
                      },
                      child: const Text('Go Back..Here..!'))
                ],
              ),
            );
          case MovieStatus.searchmovie:
            return ItemsMoviesReutilizable<SearchVideoDetails>(
              movies: state.videodetail!,
              rareOrRecomen: 'reco',
            );
        }
      },
    );
  }
}
