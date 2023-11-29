import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/features/teacher/register/screens/teacher_register_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/widgets/custom_button.dart';
import 'package:untitled/shared/widgets/custom_text_field.dart';

import '../../../../shared/resources/colors.dart';
import '../../nav_bar/screens/teacher_nav_bar_screen.dart';

class TeacherLoginScreen extends StatefulWidget {
  const TeacherLoginScreen({super.key});

  @override
  State<TeacherLoginScreen> createState() => _TeacherLoginScreenState();
}

class _TeacherLoginScreenState extends State<TeacherLoginScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 38.w),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 70.h, bottom: 70.h),
                height: 275.h,
                width: 276.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 4),
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Image.asset('assets/images/logo2.png'),
              ),
            ),
            CustomTextField(
              hintText: 'momomady@gmail.com',
              controller: TextEditingController(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
              child: CustomTextField(
                hintText: 'Please enter password',
                isPassword: isVisible,
                controller: TextEditingController(),
                suffixIcon: IconButton(
                  onPressed: () {
                    isVisible = !isVisible;
                    setState(() {});
                  },
                  icon: Icon(
                      isVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey.shade400),
                ),
              ),
            ),
            CustomElevatedButton(
                onTap: () {
                  AppNavigation.navigateOffAll(const TeacherNavBarScreen());
                },
                buttonText: 'Login'),
            Padding(
              padding: EdgeInsets.only(top: 30.h, bottom: 22.h),
              child: Row(
                children: [
                  const Expanded(
                      child: Divider(thickness: 1, color: Colors.black12)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Text(
                      'Or login with'.tr(),
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Divider(thickness: 1, color: Colors.black12)),
                ],
              ),
            ),
            SvgPicture.asset('assets/icons/social.svg'),
            Padding(
              padding: EdgeInsets.only(top: 34.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have no account? '.tr(),
                      style: TextStyle(
                          fontSize: 13.sp, color: AppColors.greyColor)),
                  InkWell(
                    onTap: () {
                      AppNavigation.navigate(
                          const TeacherRegisterScreen());
                    },
                    child: Text('Register'.tr(),
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColors.orangeColor,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
