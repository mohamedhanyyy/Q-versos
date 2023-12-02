import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/general/splash/screens/splash_screen.dart';
import 'package:untitled/features/teacher/attaches/screens/attaches_screen.dart';
import 'package:untitled/shared/themes/app_theme.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      useInheritedMediaQuery: true,
      builder: (BuildContext context, Widget? _) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          theme: AppThemes.whiteTheme,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          // home: const TeacherAttachesScreen(),
          home: const SplashScreen(),
        );
      },
    );
  }
}
