import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/core/utls/assets.dart';
import 'package:movi/src/core/utls/get_iamge.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/movie_detail_view.dart';

class ItemsMoviesReutilizable<T> extends StatefulWidget {
  final List<T> movies;

  final String rareOrRecomen;
  const ItemsMoviesReutilizable({
    Key? key,
    required this.movies,
    required this.rareOrRecomen,
  }) : super(key: key);

  @override
  State<ItemsMoviesReutilizable> createState() =>
      _ItemsMoviesReutilizableState();
}

class _ItemsMoviesReutilizableState<T>
    extends State<ItemsMoviesReutilizable<T>> {
  PageController controoler =
      PageController(initialPage: 1, viewportFraction: 0.44);

  List<Movies>? imagemovi;
  List<SearchVideoDetails>? searchmovi;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controoler,
        itemCount: widget.movies.length,
        onPageChanged: (index) {
          if (index == widget.movies.length - 1) {
            if (widget.rareOrRecomen == 'rare') {
              context.read<CubittoprareCubit>().getMoviesToprare();
            } else {
              context.read<CubitmovieCubit>().getMovies();
            }
          }
        },
        itemBuilder: (context, index) {
          if (widget.movies[index] is SearchVideoDetails) {
            searchmovi = widget.movies as List<SearchVideoDetails>;
          } else {
            imagemovi = widget.movies as List<Movies>;
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  child: SizedBox(
                    height: 160,
                    width: 140,
                    child: GestureDetector(
                        key: Key('View_movi_$index'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MoviDetails(
                                        moviepath:
                                            imagemovi?[index].posterPath ??
                                                searchmovi![index].posterPath!,
                                      )));

                          context.read<CubitccastCubit>().getActors(
                              imagemovi?[index].id ?? searchmovi![index].id);

                          context.read<MovidetailCubit>().getVideoDetails(
                              imagemovi?[index].id ?? searchmovi![index].id);

                          // String brakoc =
                          //     '${widget.movies[index].backdropPath!}/';
                          // String brakociD = '${widget.movies[index].id}';

                          //context.go('/movie/brakoc');
                          //context.goNamed('movie', params: {'find': brakociD});
                        },
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: widget.movies is List<Movies>
                              ? getPosterImg(imagemovi![index].posterPath)
                              : getPosterImg(searchmovi![index].posterPath),
                          placeholder: (context, url) => Image.asset(
                            assetsimage,
                            fit: BoxFit.cover,
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10),
                child: Text(
                  widget.movies is List<Movies>
                      ? imagemovi![index].title
                      : searchmovi![index].title,
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
              ),
            ],
          );
        });
  }
}
