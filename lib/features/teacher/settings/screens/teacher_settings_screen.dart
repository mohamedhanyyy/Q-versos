import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/shared/widgets/back_button.dart';

class TeacherSettingsScreen extends StatefulWidget {
  const TeacherSettingsScreen({super.key});

  @override
  State<TeacherSettingsScreen> createState() => _TeacherSettingsScreenState();
}

class _TeacherSettingsScreenState extends State<TeacherSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: CustomBackButton(title: 'Settings'),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xffDADADA)),
            ),
            padding: EdgeInsets.only(
                top: 10.h, left: 16.w, right: 16.w, bottom: 17.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Teaching Languages'.tr(),
                  style: const TextStyle(
                    color: Color(0xff898A8D),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.h),
                  child: Row(
                    children: [
                      Text(
                        'First Language'.tr(),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_left_sharp,
                        color: Color(0xff898A8D),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Row(
                    children: [
                      Text(
                        'Second Language'.tr(),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_left_sharp,
                        color: Color(0xff898A8D),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xffDADADA)),
            ),
            padding: EdgeInsets.only(
                top: 10.h, left: 16.w, right: 16.w, bottom: 17.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Teaching categories'.tr(),
                  style: const TextStyle(
                    color: Color(0xff898A8D),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.h),
                  child: Row(
                    children: [
                      Text(
                        'Select your Categories'.tr(),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_left_sharp,
                        color: Color(0xff898A8D),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xffDADADA)),
            ),
            padding: EdgeInsets.only(
                top: 10.h, left: 16.w, right: 16.w, bottom: 17.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chat'.tr(),
                  style: const TextStyle(
                    color: Color(0xff898A8D),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.h),
                  child: Row(
                    children: [
                      Text(
                        'Select Admin/Parents'.tr(),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_left_sharp,
                        color: Color(0xff898A8D),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
