import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movi/src/app/app.dart';
import 'package:movi/src/app/observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // runApp(const MyApp());
  await initialApp(() => const MyApp(key: Key('myapp_')));
}
