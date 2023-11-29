import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/student/navbar/screens/student_navbar_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/widgets/custom_button.dart';
import 'package:untitled/shared/widgets/custom_text_field.dart';

import '../../../shared/widgets/back_button.dart';

class StudentForgetPasswordScreen extends StatefulWidget {
  const StudentForgetPasswordScreen({super.key});

  @override
  State<StudentForgetPasswordScreen> createState() =>
      _StudentForgetPasswordScreenState();
}

class _StudentForgetPasswordScreenState
    extends State<StudentForgetPasswordScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const PreferredSize(
        preferredSize: Size(double.infinity,80),
        child: CustomBackButton(title: 'إعادة كلمة المرور',),
      ),
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
              controller: TextEditingController(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h, bottom: 16.h,right: 30,left: 30),
              child: CustomElevatedButton(
                height: 46  ,
                onTap: () {
                  AppNavigation.navigateOffAll(const StudentNavBarScreen());
                },
                buttonText: 'إرسال رابط التفعيل',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
