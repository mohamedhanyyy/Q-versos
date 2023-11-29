import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/features/student/forget_password/forget_password_screen.dart';
import 'package:untitled/features/student/navbar/screens/student_navbar_screen.dart';
import 'package:untitled/features/student/register/screens/student_register_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/widgets/custom_button.dart';
import 'package:untitled/shared/widgets/custom_text_field.dart';

import '../../../../shared/resources/colors.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen({super.key});

  @override
  State<StudentLoginScreen> createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
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
              hintText: 'أدخل البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
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
                  AppNavigation.navigateOffAll(const StudentNavBarScreen());
                },
                buttonText: 'Login'),
             const SizedBox(height: 10),
            InkWell(
              onTap: () {
                AppNavigation.navigate(const StudentForgetPasswordScreen());
              },
              child: Text('هل نسيت كلمة المرور؟',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.orangeColor,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
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
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'برجاء إدخال كود تسجيل الدخول',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 40),
                            child: CustomTextField(
                                hintText: 'الكود',
                                controller: TextEditingController()),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, bottom: 20),
                            child: CustomElevatedButton(
                                onTap: () {}, buttonText: 'تم', height: 45),
                          )
                        ],
                      ),
                    );
                  },
                  isScrollControlled: true,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                );
              },
              child: Text(' هل لديك كود تسجيل دخول؟',
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.orangeColor,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            const SizedBox(height: 10),
            SvgPicture.asset('assets/icons/social.svg'),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have no account? '.tr(),
                      style: TextStyle(
                          fontSize: 13.sp, color: AppColors.greyColor)),
                  InkWell(
                    onTap: () {
                      AppNavigation.navigate(const StudentRegisterScreen());
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
