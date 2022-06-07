// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movi/src/core/utls/assets.dart';
import 'package:movi/src/core/utls/get_iamge.dart';

import 'package:movi/src/feature/domain/model/movies_state.dart';

import 'package:movi/src/feature/movi/cubit/view_cubit/cast.dart';
import 'package:movi/src/feature/movi/widget_custon/padding_text.dart';

class MoviDetails extends StatelessWidget {
  final Movies movie;

  const MoviDetails({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        body: SafeArea(
          child: CustomScrollView(slivers: [
            SliverAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new_outlined)),
              elevation: 2.0,
              backgroundColor: Theme.of(context).cardColor,
              expandedHeight: 420.0,
              floating: false,
              pinned: false,
              flexibleSpace: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: getPosterImg(movie.posterPath),
                  placeholder: (context, url) => Image.asset(
                    assetsimage,
                    fit: BoxFit.cover,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    children: [
                      SizedBox(
                        width: 230,
                        child: PaddingText(
                          style: Theme.of(context).textTheme.headline5!,
                          movie: movie.title,
                          top: 20,
                          left: 15,
                          right: 15,
                          botton: 10,
                        ),
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(
                            textDirection: TextDirection.ltr,
                            Icons.movie,
                            size: 18,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: TextButton(
                            style: Theme.of(context).textButtonTheme.style,
                            onPressed: () {},
                            child: Text('WATCH NOW',
                                style: Theme.of(context).textTheme.headline3!)),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      // ignore: duplicate_ignore
                      for (var i = 0; i < 5; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            textDirection: TextDirection.ltr,
                            Icons.star_rate,
                            size: 14,
                            color: Colors.yellow,
                          ),
                        )
                    ],
                  ),
                  PaddingText(
                    left: 15,
                    top: 15,
                    right: 15,
                    movie: movie.overview,
                    style: Theme.of(context).textTheme.headline3!,
                  ),
                  Divider(),
                  SingleChildScrollView(
                    child: CastWidget(
                      movil: movie,
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
