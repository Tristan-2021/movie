//import 'package:go_router/go_router.dart';
//import 'package:go_router/go_router.dart';

// final router = GoRouter(debugLogDiagnostics: true, routes: [
//   GoRoute(
//     path: '/',
//     builder: (context, state) => const Welcome(),
//   ),
//   GoRoute(
//       path: '/movie/:find',
//       name: 'movie',
//       pageBuilder: (context, state) {
//         final movies = BlocProvider.of<CubitmovieCubit>(context);
//         final param = state.params["find"]!;
//         //  movies.searchMovieList(param);
//         //   print(movi.backdropPath);
//         print(param.split('/').length);

//         return MaterialPage(
//             key: state.pageKey, child: const ExampleNavigatioonArgument());
//       }),
// ]);
