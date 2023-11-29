import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/student/login/screens/login_screen.dart';
import 'package:untitled/features/student/register/screens/student_register_screen.dart';
import 'package:untitled/features/teacher/login/screens/teacher_login_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';

import '../../../../shared/resources/colors.dart';
import '../../../teacher/register/screens/teacher_register_screen.dart';

class ChooseRegisterUserTypeScreen extends StatelessWidget{
  const ChooseRegisterUserTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/registerbackground.png',
                height: 500.h,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned.fill(
                child: Image.asset(
                  'assets/images/registerimage.png',
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'Create Your Profile'.tr(),
              style: TextStyle(
                color: const Color(0xff273958),
                fontWeight: FontWeight.w400,
                fontSize: 30.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'الأن!'.tr(),
              style: TextStyle(
                color: const Color(0xff273958),
                fontWeight: FontWeight.w600,
                fontSize: 30.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 28, bottom: 34),
            child: Text(
              'هل أنت طالب أم معلم؟',
              style: TextStyle(
                color: const Color(0xff989EA7),
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    AppNavigation.navigate(
                        const TeacherRegisterScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27),
                          side:
                              const BorderSide(color: AppColors.orangeColor)),
                      minimumSize: Size(138.w, 56.h)),
                  child: Text('Teacher'.tr(),
                      style: TextStyle(
                          color: AppColors.orangeColor,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500)),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    AppNavigation.navigate(
                        const StudentRegisterScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27)),
                      minimumSize: Size(138.w, 56.h)),
                  child: Text('Student'.tr(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
class ChooseLoginUserTypeScreen extends StatelessWidget{
  const ChooseLoginUserTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/registerbackground.png',
                height: 500.h,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned.fill(
                child: Image.asset(
                  'assets/images/registerimage.png',
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              "قم بتسجيل الدخول",
              style: TextStyle(
                color: const Color(0xff273958),
                fontWeight: FontWeight.w400,
                fontSize: 30.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'الأن!'.tr(),
              style: TextStyle(
                color: const Color(0xff273958),
                fontWeight: FontWeight.w600,
                fontSize: 30.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 28, bottom: 34),
            child: Text(
              'هل أنت طالب أم معلم؟',
              style: TextStyle(
                color: const Color(0xff989EA7),
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    AppNavigation.navigate(
                        const TeacherLoginScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27),
                          side:
                              const BorderSide(color: AppColors.orangeColor)),
                      minimumSize: Size(138.w, 56.h)),
                  child: Text('Teacher'.tr(),
                      style: TextStyle(
                          color: AppColors.orangeColor,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500)),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    AppNavigation.navigate(
                        const StudentLoginScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27)),
                      minimumSize: Size(138.w, 56.h)),
                  child: Text('Student'.tr(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
