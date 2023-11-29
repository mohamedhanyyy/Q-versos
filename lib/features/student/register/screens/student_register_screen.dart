import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/features/student/login/screens/login_screen.dart';
import 'package:untitled/features/student/register/screens/well_done_screen.dart';
import 'package:untitled/shared/widgets/custom_button.dart';
import 'package:untitled/shared/widgets/custom_text_field.dart';

import '../../../../services/navigation/navigation.dart';
import '../../../../shared/resources/colors.dart';

class StudentRegisterScreen extends StatefulWidget {
  const StudentRegisterScreen({super.key});

  @override
  State<StudentRegisterScreen> createState() => _StudentRegisterScreenState();
}

class _StudentRegisterScreenState extends State<StudentRegisterScreen> {
  bool passwordVisible = false;
  bool passwordConfirmationVisible = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leadingWidth: 95,
        toolbarHeight: 65,
        title: const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text('إنشاء حساب',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w400)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(height: 70.h,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: CustomTextField(
                hintText: 'Name',
                controller: nameController,
                validationFunc: (val) {
                  if (val!.isEmpty) {
                    return 'Empty name'.tr();
                  }
                  return null;
                },
              ),
            ),
            CustomTextField(
              hintText: 'Email',
              textInputType: TextInputType.emailAddress,
              controller: emailController,
              validationFunc: (val) {
                if (val!.isEmpty) {
                  return 'Empty email'.tr();
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: CustomTextField(
                hintText: 'Phone',
                textInputType: TextInputType.phone,
                controller: phoneController,
                validationFunc: (val) {
                  if (val!.isEmpty) {
                    return 'Empty phone'.tr();
                  }
                  return null;
                },
              ),
            ),
            InkWell(
              onTap: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now());
              },
              child: CustomTextField(
                enabled: false,
                hintText: 'Birth date',
                textInputType: TextInputType.phone,
                controller: phoneController,
                validationFunc: (val) {
                  if (val!.isEmpty) {
                    return 'Empty Birth date'.tr();
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: CustomTextField(
                isPassword: passwordVisible,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                  icon: Icon(passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off_outlined),
                ),
                hintText: 'Password',
                textInputType: TextInputType.visiblePassword,
                controller: passwordController,
                validationFunc: (val) {
                  if (val!.isEmpty) {
                    return 'Empty password'.tr();
                  }
                  return null;
                },
              ),
            ),
            CustomTextField(
              isPassword: passwordConfirmationVisible,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordConfirmationVisible = !passwordConfirmationVisible;
                  });
                },
                icon: Icon(passwordConfirmationVisible
                    ? Icons.visibility
                    : Icons.visibility_off_outlined),
              ),
              hintText: 'Confirm Password',
              textInputType: TextInputType.visiblePassword,
              controller: passwordConfirmController,
              validationFunc: (val) {
                if (val!.isEmpty) {
                  return 'Empty password'.tr();
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h, bottom: 50.h),
              child: CustomElevatedButton(
                  onTap: () {
                    AppNavigation.navigateOffAll(const WellDoneScreen());
                  },
                  buttonText: 'Create'),
            ),
            Row(
              children: [
                const Expanded(
                    child: Divider(thickness: 1, color: Colors.black12)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    'Or with'.tr(),
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
                      AppNavigation.navigate(const StudentLoginScreen());
                    },
                    child: Text('Login'.tr(),
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
