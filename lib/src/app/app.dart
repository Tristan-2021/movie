import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/core/router/routes.dart';
import 'package:movi/src/core/styles/colors.dart';
import 'package:http/http.dart' as http;
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_cast/cubit/cubitccast_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_movi_detail/cubit/movidetail_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_top_rare/cubit/cubittoprare_cubit.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ServiceMovi(http.Client()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CubitmovieCubit(
              serviceMovi: context.read<ServiceMovi>(),
            )..getMovies(),
          ),
          BlocProvider(
            create: (context) => MovidetailCubit(context.read<ServiceMovi>()),
          ),
          BlocProvider(
            create: (context) => CubitccastCubit(context.read<ServiceMovi>()),
          ),
          BlocProvider(
            create: (context) => CubittoprareCubit(context.read<ServiceMovi>())
              ..getMoviesToprare(),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          title: 'Flutter Demo',
          theme: ThemeData().copyWith(
              backgroundColor: ColorsMovie.colorapbar,
              cardColor: ColorsMovie.colorcontainer,
              canvasColor: ColorsMovie.colorcontainerSearch,
              textButtonTheme: TextButtonThemeData(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      )),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ColorsMovie.colorcbottons))),
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              textTheme: const TextTheme().copyWith(
                headline5: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                headline1: const TextStyle(
                  fontSize: 12,
                  color: Colors.white12,
                ),
                headline6: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
                headline2: const TextStyle(
                  fontSize: 12,
                  color: Colors.white30,
                ),
                headline3: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white30,
                  wordSpacing: 0.4,
                ),
              )),
          // home: const Welcome(),
        ),
      ),
    );
  }
}
