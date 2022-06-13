import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/app/app.dart';
import 'package:movi/src/core/observer/observer.dart';

void main() {
  BlocOverrides.runZoned(() async {
    runApp(const MyApp());
  }, blocObserver: AppBlocObserver());
}
