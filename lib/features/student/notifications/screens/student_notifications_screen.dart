import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/shared/widgets/back_button.dart';
import 'package:untitled/shared/widgets/custom_button.dart';

class StudentNotificationScreen extends StatefulWidget {
  const StudentNotificationScreen({super.key});

  @override
  State<StudentNotificationScreen> createState() =>
      _StudentNotificationScreenState();
}

class _StudentNotificationScreenState extends State<StudentNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: const CustomBackButton(title: 'Notifications'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150.h),
            SvgPicture.asset('assets/icons/notification2.svg'),
              Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 8),
              child: Text(
                'No Notifications!'.tr(),
                style: const TextStyle(
                  color: Color(0xff263238),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
              Text(
              'You don’t have any notification yet. Please start learning'.tr(),
              style: const TextStyle(
                color: Color(0xffB0B0B0),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 188.w,
              child: CustomElevatedButton(
                onTap: () {},
                buttonText: 'View Your Sessions',
                borderRadius: 8,
                fontSize: 15,
                height: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
