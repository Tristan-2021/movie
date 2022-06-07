import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/core/utls/date.dart';
import 'package:movi/src/core/utls/get_iamge.dart';
import 'package:movi/src/feature/domain/model/movies_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_state.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_state.dart';
import 'package:movi/src/feature/movi/widget_custon/padding_text.dart';
import 'package:movi/src/feature/movi/widget_custon/row_paddind.dart';

class CastWidget extends StatelessWidget {
  final Movies movil;
  const CastWidget({Key? key, required this.movil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovidetailCubit, MovidetailState>(
      builder: (context, state) {
        if (state.statusmovie.name == 'initial') {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.statusmovie.name == 'movies') {
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
                              backgroundImage: NetworkImage(
                                  getPosterImg(state.videodetail!.posterPath)),
                              radius: 30.0,
                            ),
                          ),
                          SizedBox(
                            width: 48,
                            child: PaddingText(
                              movie: state.cast![i].name,
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
              const RowColum(
                label: 'Studio',
                label1: 'Wagners Bros',
              ),
              const RowColum(
                label: 'Gnero',
                label1: 'Acction',
              ),
              RowColum(
                label: 'Release',
                label1: date(movil.releaseDate),
              ),
            ],
          );
        }
        if (state.statusmovie.name == 'error') {
          return Center(
            child: Text(state.error),
          );
        }
        return const Center(
          child: Text(' error inesperado'),
        );
      },
    );
  }
}
