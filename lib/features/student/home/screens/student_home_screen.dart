import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:untitled/features/student/home/screens/aya_explination.dart';
import 'package:untitled/features/student/notifications/screens/student_notifications_screen.dart';
import 'package:untitled/features/student/prophet_story/screens/prophet_story_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/extensions/context_extension.dart';
import 'package:untitled/shared/resources/colors.dart';

import '../../benefits/screens/benefits_screen.dart';
import '../../ejada/screens/ejada_screen.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  final ZoomDrawerController _zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _zoomDrawerController,
      borderRadius: 50,
      openCurve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 500),
      menuScreen: buildMenuScreen(),
      menuScreenWidth: ScreenUtil().screenWidth * 0.6,
      mainScreen: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 145.h),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/cloud.jpg',
                width: double.infinity,
                fit: BoxFit.fill,
                height: 145.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 37.h, right: 17.w, left: 17.w, bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              AppNavigation.navigate(
                                  const StudentNotificationScreen());
                            },
                            child: SvgPicture.asset(
                                'assets/icons/notification.svg')),
                        InkWell(
                            onTap: () {
                              _zoomDrawerController.toggle!();
                            },
                            child: SvgPicture.asset(
                                'assets/icons/homefilter.svg')),
                      ],
                    ),
                    Text(
                      '${'Hi'.tr()} Mohamed',
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'would you like to learn?'.tr(),
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 137.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/sponser.png'),
                          fit: BoxFit.fill)),
                  child: Center(
                    child: Text(
                      'Sponser'.tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
                child: Container(
                  padding: EdgeInsets.all(13.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color(0x1219310d),
                  ),
                  child: const Row(
                    children: [
                      // CircleAvatar(
                      //   radius: 13,
                      //   backgroundColor: AppColors.primaryColor,
                      //   child: Text(
                      //     '1',
                      //     style: TextStyle(color: Colors.white),
                      //   ),
                      // ),

                      // Spacer(),
                      Text(
                        'سورة الفاتحة الاية رقم (2)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: 'Amiri'),
                      )
                      // SvgPicture.asset('assets/icons/share.svg'),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(horizontal: 14),
                      //   child: SvgPicture.asset('assets/icons/play.svg'),
                      // ),
                      // SvgPicture.asset('assets/icons/save.svg'),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الْحَمْدُ لِلَّهِ رَبِّ الْعٰلَمِينَ',
                  style: TextStyle(
                      fontFamily: 'Amiri',
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'تفسير سورة الفاتحة  تفسير سورة الفاتحة  تفسير سورة الفاتحة  تفسير سورة الفاتحة  ',
                  style: TextStyle(fontFamily: 'Amiri', fontSize: 14.sp),
                  maxLines: 3,
                ),
              ),
              Align(
                alignment: context.isCurrentEnglish
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    AppNavigation.navigate(const AyaExplanation());
                  },
                  child: Text(
                    'Read more...'.tr(),
                    style: TextStyle(
                      fontFamily: 'Amiri',
                      color: AppColors.orangeColor,
                      fontSize: 14.sp,
                    ),
                    maxLines: 2,
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 10.h),
              //   child: Align(
              //     alignment: context.isCurrentEnglish
              //         ? Alignment.centerLeft
              //         : Alignment.centerRight,
              //     child: Text(
              //       '[كل] الحمد لله رب العالمين -',
              //       style: TextStyle(
              //           color: const Color(0xff979797),
              //           fontWeight: FontWeight.w400,
              //           fontSize: 16.sp),
              //     ),
              //   ),
              // ),
              Divider(thickness: 1, color: Colors.grey.shade300),
              GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 55.h),
                  shrinkWrap: true,
                  children: [
                    buildContainer('Free session', 'You’ve a free session',
                        'Ask now...', () {}, context),
                    buildContainer(
                        'Ejada', 'Get All Ejada Videos', 'See videos...', () {
                      AppNavigation.navigate(const EjadaScreen());
                    }, context),
                    buildContainer(
                        'Benefits', 'View All Benefits', 'Learn more...', () {
                      AppNavigation.navigate(const BenefitsScreen());
                    }, context),
                    buildContainer('Prophet Stories', 'View All Prophets',
                        'View Prophet Details...', () {
                      AppNavigation.navigate(const ProphetStoryScreen());
                    }, context),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}

InkWell buildContainer(String? title1, String? title2, String? title3,
    Function? function, BuildContext context) {
  return InkWell(
    onTap: () {
      function!();
    },
    child: Container(
      width: 155,
      height: 45.h,
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title1!.tr(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                  color: Colors.white)),
          const Spacer(),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 12,
            child: Icon(
              context.isCurrentEnglish
                  ? Icons.keyboard_arrow_right_rounded
                  : Icons.keyboard_arrow_left_rounded,
              color: AppColors.orangeColor,
              size: 15,
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildMenuScreen() {
  return Scaffold(
    body: Stack(
      fit: StackFit.expand,
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Image.asset(
          'assets/images/group.png',
          height: ScreenUtil().screenHeight,
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50.h, left: 15),
              height: 186.w,
              width: 186.w,
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/consult.svg'),
                  const SizedBox(width: 18),
                  Text(
                    "Contact Us".tr(),
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/persondrawer.svg'),
                  const SizedBox(width: 18),
                  const Text(
                    "اعرف عنا",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/privacy.svg'),
                  const SizedBox(width: 18),
                  Text(
                    "Privacy Policy".tr(),
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/privacy.svg'),
                  const SizedBox(width: 18),
                  Text(
                    "Terms & Conditions".tr(),
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: AppColors.primaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/power.svg'),
                const SizedBox(width: 9),
                Text(
                  'Log out'.tr(),
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
