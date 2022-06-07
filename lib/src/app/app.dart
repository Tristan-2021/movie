import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/app/welcome.dart';
import 'package:movi/src/core/styles/colors.dart';
import 'package:http/http.dart' as http;
import 'package:movi/src/feature/domain/repo_sources/data_sources.dart';
import 'package:movi/src/feature/movi/cubit/cubit_video/cubit/cubitmovie_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ServiceMovi(http.Client()),
      child: BlocProvider(
        create: (context) => CubitmovieCubit(
          serviceMovi: context.read<ServiceMovi>(),
        )..getMovies(),
        child: MaterialApp(
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
          home: const Welcome(),
        ),
      ),
    );
  }
}
