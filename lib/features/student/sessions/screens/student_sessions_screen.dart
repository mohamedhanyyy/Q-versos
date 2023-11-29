import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../shared/resources/colors.dart';
import '../../home/screens/student_home_screen.dart';

class StudentSessionsScreen extends StatefulWidget {
  const   StudentSessionsScreen({super.key});

  @override
  State<StudentSessionsScreen> createState() => _StudentSessionsScreenState();
}

class _StudentSessionsScreenState extends State<StudentSessionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/girl1.png'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 13, top: 23),
                        child: Text(
                          '${'Hi'.tr()}, Momo!',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 170.w,
                        child: Text(
                          'What chapter would you like to start?'.tr(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 700.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 17.h),
                    child: Text(
                      'Qur\'an Being Learned'.tr(),
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff43463F),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 55.h,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: buildContainer('Quran', '30 Levels',
                              '5K active participants', () {}, context),
                        );
                      },
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                    ),
                  ),
                  SizedBox(
                    height: 400.h,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15.h, top: 10),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          buildMemorizingItem(),
                          buildMemorizingItem(),
                          buildMemorizingItem(),
                          buildMemorizingItem(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Container buildMemorizingItem() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: const Color(0xffCDCDCD)),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    child: Stack(
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/man.png'),
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mr.Ahmed Gouda',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
                Text(
                  'Next lesson is starting after 4 mins'.tr(),
                  style: const TextStyle(fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: LinearPercentIndicator(
                    width: 175.w,
                    trailing: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Text('80%'),
                    ),
                    padding: EdgeInsets.zero,
                    percent: 0.80,
                    progressColor: const Color(0xff2FDB81),
                    lineHeight: 13,
                    barRadius: const Radius.circular(20),
                    backgroundColor: const Color(0xffFFF5EE),
                  ),
                ),
              ],
            )
          ],
        ),
        Positioned(
            top: 0,
            right: 0,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: const Color(0xffFFF5EE),
              child: Text(
                '   ${'Memorizing'.tr()}   ',
                style: const TextStyle(
                    fontSize: 10,
                    color: AppColors.orangeColor,
                    fontWeight: FontWeight.w400),
              ),
            ))
      ],
    ),
  );
}
