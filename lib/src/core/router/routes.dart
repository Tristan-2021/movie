import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
//import 'package:go_router/go_router.dart';
import 'package:movi/src/app/welcome.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/view_cubit/movie_detail_view.dart';

final router = GoRouter(debugLogDiagnostics: true, routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const Welcome(),
  ),
  GoRoute(
      path: '/movie/:find',
      name: 'movie',
      pageBuilder: (context, state) {
        final param = state.params["find"]!;

        context.read<CubitccastCubit>().getActors(int.parse(param));

        context.read<MovidetailCubit>().getVideoDetails(int.parse(param));

        return MaterialPage(key: state.pageKey, child: const MoviDetails());
      }),
]);
