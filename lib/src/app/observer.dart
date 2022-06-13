// ignore_for_file: depend_on_referenced_packages, sort_child_properties_last

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movi/src/core/utls/localization_soport.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    log('event $event ');

    super.onEvent(bloc, event);
  }
}

Future<void> initialApp(Widget Function() builder) async {
  BlocOverrides.runZoned(() async {
    runApp(EasyLocalization(
      supportedLocales: suport,
      path: 'l10n',
      child: builder(),
      fallbackLocale: spanis,
    ));
  }, blocObserver: AppBlocObserver());
}
