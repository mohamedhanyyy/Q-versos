import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/general/onboarding/screens/onboarding_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';

import '../../../../shared/resources/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      AppNavigation.navigateOffAll(const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800.h,
        width: 360.w,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.orangeColor,
            AppColors.primaryColor,
          ],
        )),
        child: Center(
          child: Container(
            height: 186.h,
            width: 185.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset('assets/images/splash.png'),
          ),
        ),
      ),
    );
  }
}
