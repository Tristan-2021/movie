import 'package:go_router/go_router.dart';
import 'package:movi/src/app/welcome.dart';

final router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const Welcome()),
]);
