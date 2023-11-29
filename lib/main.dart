import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled/shared/functions/general_functions.dart';
import 'package:untitled/shared/functions/restart_app.dart';

import 'my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GeneralFunctions.setPreferredOrientation();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      startLocale: const Locale('ar'),
      path: 'assets/translations',
      child: const RestartWidget(child: MyApp()),
    ),
  );
}
