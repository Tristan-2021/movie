import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/core/utls/date.dart';
import 'package:movi/src/core/utls/get_iamge.dart';
import 'package:movi/src/feature/domain/model/casts_state.dart';
import 'package:movi/src/feature/domain/model/moviedetails/movi_details_state.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_state.dart';

import 'package:movi/src/feature/movi/widget_custon/padding_text.dart';
import 'package:movi/src/feature/movi/widget_custon/row_paddind.dart';

class CastWidget extends StatelessWidget {
  final Movies movil;
  final VideoDetails movidetails;
  const CastWidget({Key? key, required this.movil, required this.movidetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitccastCubit, CubitccastState>(
      builder: (context, state) {
        switch (state.statusmovie) {
          case MovieCastStatus.initial:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case MovieCastStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );

          case MovieCastStatus.castdet:
            return CastView(
              cast: state.cast!,
              movidetails: movidetails,
            );
          case MovieCastStatus.error:
            return Center(
              child: Text(state.error),
            );
        }
      },
    );
  }
}

class CastView extends StatelessWidget {
  final VideoDetails movidetails;
  const CastView({
    Key? key,
    required this.cast,
    required this.movidetails,
  }) : super(key: key);

  final List<Cast> cast;

  @override
  Widget build(BuildContext context) {
    //print(movidetails.genres);

    return Column(
      textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < 4; i++)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 20),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(getPosterImg(cast[i].profilePath)),
                        radius: 30.0,
                      ),
                    ),
                    SizedBox(
                      width: 48,
                      child: PaddingText(
                        movie: cast[i].name,
                        left: 0,
                        right: 0,
                        botton: 10,
                        style: Theme.of(context).textTheme.headline2!,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        RowColum(
          label: 'Studio',
          label1: movidetails.productionCompanies[0].name,
        ),
        RowColum(
          label: 'Gnero',
          label1: movidetails.genres[0].name,
        ),
        RowColum(
          label: 'Release',
          label1: date(movidetails.releaseDate),
        ),
      ],
    );
  }
}
