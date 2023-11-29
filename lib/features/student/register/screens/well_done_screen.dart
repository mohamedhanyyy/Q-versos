import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/student/navbar/screens/student_navbar_screen.dart';
import 'package:untitled/features/student/subscribe/screens/show_teachers_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/resources/colors.dart';

class WellDoneScreen extends StatelessWidget {
  const WellDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 135.h,
                bottom: 66.h,
              ),
              child: Image.asset('assets/images/welldone.png'),
            ),
            Text(
              'WELL DONE'.tr(),
              style: TextStyle(
                color: const Color(0xff40513B),
                fontWeight: FontWeight.w700,
                fontSize: 30.sp,
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Click continue to start your journey.'.tr(),
              style: TextStyle(
                color: const Color.fromRGBO(64, 81, 59, 0.49),
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50.h),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.r),
            ),
            backgroundColor: AppColors.primaryColor,
          ),
          onPressed: () {
            AppNavigation.navigateOffAll(const StudentNavBarScreen());
          },
          child: Text(
            'Continue'.tr(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
class WellDoneFamilyScreen extends StatelessWidget {
  const WellDoneFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 135.h,
                bottom: 66.h,
              ),
              child: Image.asset('assets/images/welldone.png'),
            ),
            Text(
              'WELL DONE'.tr(),
              style: TextStyle(
                color: const Color(0xff40513B),
                fontWeight: FontWeight.w700,
                fontSize: 30.sp,
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Click continue to start your journey.'.tr(),
              style: TextStyle(
                color: const Color.fromRGBO(64, 81, 59, 0.49),
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50.h),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  showAddFamilyBottomSheet(context);
                },
                child: Text(
                  'Add member'.tr(),
                  style: TextStyle(
                    color: AppColors.orangeColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Flexible(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50.h),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  backgroundColor: AppColors.primaryColor,
                ),
                onPressed: () {
                  AppNavigation.navigateOffAll(const StudentNavBarScreen());
                },
                child: Text(
                  'Continue'.tr(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
