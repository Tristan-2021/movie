// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_general/cubit/cubitgeneral_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_general/cubit/cubitgeneral_state.dart';

import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/items_reutilizable.dart';

class ItemsMoviRecomend extends StatelessWidget {
  const ItemsMoviRecomend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitgeneralCubit, CubitgeneralState>(
      builder: (context, state) {
        switch (state.generlstatus) {
          case CubitGeneralSatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case CubitGeneralSatus.error:
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
          case CubitGeneralSatus.video:
            return ItemsMoviesReutilizable<Movies>(
              movies: state.video!,
              rareOrRecomen: 'reco',
            );
          case CubitGeneralSatus.videoDetail:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case CubitGeneralSatus.videoSearch:
            return ItemsMoviesReutilizable<SearchVideoDetails>(
              movies: state.videoSearchs!,
              rareOrRecomen: 'reco',
            );
          default:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
