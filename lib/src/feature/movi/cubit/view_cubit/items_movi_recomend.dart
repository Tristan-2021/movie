// ignore_for_file: unnecessary_null_comparison

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/core/utls/assets.dart';
import 'package:movi/src/core/utls/get_iamge.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';

import 'movie_detail_view.dart';

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
            return ItemsMovies(movies: state.movies!);

          case MovieStatus.error:
            return Center(
              child: Text(state.error),
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

class ItemsMovies extends StatelessWidget {
  final List<Movies> movies;
  const ItemsMovies({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: PageController(initialPage: 1, viewportFraction: 0.44),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          var imagen = movies[index].posterPath;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => MoviDetails(
                            movie: movies[index],
                          )));

              context
                  .read<CubitccastCubit>()
                  .getActors(movies[index].id.toString());

              context
                  .read<MovidetailCubit>()
                  .getVideoDetails(movies[index].id.toString());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    child: Container(
                        height: 160,
                        width: 150,
                        margin: const EdgeInsets.only(left: 7, right: 7),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: getPosterImg(imagen),
                          placeholder: (context, url) => Image.asset(
                            assetsimage,
                            fit: BoxFit.cover,
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 10),
                  child: Text(
                    movies[index].title,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.ltr,
                    children: [
                      for (var i = 0; i < 5; i++)
                        // ignore: prefer_const_constructors
                        Icon(
                          textDirection: TextDirection.ltr,
                          Icons.star_rate,
                          size: 14,
                          color: Colors.yellow,
                        )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
