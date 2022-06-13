// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart' as intl;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/core/utls/assets.dart';
import 'package:movi/src/core/utls/get_iamge.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';

import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_state.dart';

import 'package:movi/src/feature/movi/cubit/view_cubit/cast.dart';
import 'package:movi/src/feature/movi/widget_custon/padding_text.dart';

class MoviDetails extends StatelessWidget {
  final String moviepath;

  const MoviDetails({Key? key, required this.moviepath}) : super(key: key);

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
                  imageUrl: getPosterImg(moviepath),
                  placeholder: (context, url) => Image.asset(
                    assetsimage,
                    fit: BoxFit.cover,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            BlocBuilder<MovidetailCubit, MovidetailState>(
              builder: (context, state) {
                switch (state.statusmovie) {
                  case MovieDetailStatus.initial:
                    return SliverList(
                      delegate: SliverChildListDelegate([
                        Center(
                          child: CircularProgressIndicator(),
                        )
                      ]),
                    );
                  case MovieDetailStatus.loading:
                    return SliverList(
                      delegate: SliverChildListDelegate([
                        Center(
                          child: CircularProgressIndicator(),
                        )
                      ]),
                    );

                  case MovieDetailStatus.movidetail:
                    return VideDetailsBody(
                      moviedetails: state.videodetail!,
                    );

                  case MovieDetailStatus.error:
                    return SliverList(
                      delegate: SliverChildListDelegate([
                        Center(
                          child: Text(state.error),
                        )
                      ]),
                    );
                }
              },
            ),
          ]),
        ));
  }
}

class VideDetailsBody extends StatelessWidget {
  const VideDetailsBody({
    Key? key,
    required this.moviedetails,
  }) : super(key: key);

  final VideoDetails moviedetails;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Row(
            children: [
              SizedBox(
                width: 230,
                child: PaddingText(
                  style: Theme.of(context).textTheme.headline5!,
                  movie: moviedetails.title,
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
                    child: Text('botons_title'.tr(),
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
            movie: moviedetails.overview,
            style: Theme.of(context).textTheme.headline3!,
          ),
          Divider(),
          SingleChildScrollView(
            child: CastWidget(
              movidetails: moviedetails,
            ),
          )
        ],
      ),
    );
  }
}
