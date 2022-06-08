import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/core/utls/assets.dart';
import 'package:movi/src/core/utls/get_iamge.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/movie_detail_view.dart';

class ItemsMovies extends StatelessWidget {
  final List<Movies> movies;
  final String rareOrRecomen;
  const ItemsMovies({
    Key? key,
    required this.movies,
    required this.rareOrRecomen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: PageController(initialPage: 1, viewportFraction: 0.44),
        itemCount: movies.length,
        onPageChanged: (index) {
          if (index == movies.length - 1) {
            if (rareOrRecomen == 'rare') {
              context.read<CubittoprareCubit>().getMoviesToprare();
            } else {
              context.read<CubitmovieCubit>().getMovies();
            }
          }
        },
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
