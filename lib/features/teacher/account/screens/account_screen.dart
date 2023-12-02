import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/features/teacher/account/screens/edit_profile_screen.dart';
import 'package:untitled/features/teacher/attaches/screens/attaches_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/resources/colors.dart';

import '../../../general/splash/screens/splash_screen.dart';

class TeacherAccountScreen extends StatefulWidget {
  const TeacherAccountScreen({super.key});

  @override
  State<TeacherAccountScreen> createState() => _TeacherAccountScreenState();
}

class _TeacherAccountScreenState extends State<TeacherAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Image.asset('assets/images/profilebackground.png',
                    width: double.infinity, fit: BoxFit.fill),
                // Positioned(
                //     top: 57.h,
                //     right: 40.w,
                //     child: Container(
                //       padding: const EdgeInsets.all(8),
                //       width: 44.sp,
                //       height: 44.sp,
                //       decoration: BoxDecoration(
                //         color: Colors.white,
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       child: Icon(Icons.more_vert),
                //     )),
                Positioned(
                    top: 71.h,
                    child: Text(
                      'Profile'.tr(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    )),
                Positioned(
                    top: 149.h,
                    left: 15.w,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/man.png',
                              fit: BoxFit.fill,
                              width: 100.sp,
                              height: 100.sp,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mohamed Mady',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xff263238),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Historical Readings type'.tr(),
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: const Color(0xff455B68),
                                      fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 11.h, bottom: 6.h),
                                  child: SizedBox(
                                    width: 211.w,
                                    child: Text(
                                      'Desc about me. Desc about me. Desc about me'
                                          .tr(),
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: const Color(0xff898989),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                            width: 300.w,
                            child: const Divider(
                              height: 1,
                              thickness: 1,
                              color: Colors.black12,
                            ))
                      ],
                    )),
                // Positioned(
                //     top: 165.h,
                //     left: 40.w,
                //     child: SvgPicture.asset('assets/icons/edit.svg')),
              ],
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 25.w),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Column(
            //         children: [
            //           Text(
            //             'ذكر'.tr(),
            //             style: TextStyle(
            //                 fontSize: 17.sp,
            //                 fontWeight: FontWeight.w600,
            //                 color: const Color(0xff263238)),
            //           ),
            //           Text(
            //             'Gender'.tr(),
            //             style: TextStyle(
            //                 fontSize: 10.sp,
            //                 fontWeight: FontWeight.w400,
            //                 color: const Color(0xff898989)),
            //           ),
            //         ],
            //       ),
            //       Container(
            //           height: 24.h, width: 1, color: Colors.grey.shade400),
            //       Column(
            //         children: [
            //           Text(
            //             '20',
            //             style: TextStyle(
            //                 fontSize: 17.sp,
            //                 fontWeight: FontWeight.w600,
            //                 color: const Color(0xff263238)),
            //           ),
            //           Text(
            //             'Sessions'.tr(),
            //             style: TextStyle(
            //                 fontSize: 10.sp,
            //                 fontWeight: FontWeight.w400,
            //                 color: const Color(0xff898989)),
            //           ),
            //         ],
            //       ),
            //       Container(
            //           height: 24.h, width: 1, color: Colors.grey.shade400),
            //       Column(
            //         children: [
            //           Text(
            //             'En'.tr(),
            //             style: TextStyle(
            //                 fontSize: 17.sp,
            //                 fontWeight: FontWeight.w600,
            //                 color: const Color(0xff263238)),
            //           ),
            //           Text(
            //             'Language'.tr(),
            //             style: TextStyle(
            //                 fontSize: 10.sp,
            //                 fontWeight: FontWeight.w400,
            //                 color: const Color(0xff898989)),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: const Color(0xffDADADA)),
              ),
              padding: EdgeInsets.only(
                  top: 9, left: 16.w, right: 16.w, bottom: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dashboard'.tr(),
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color(0xff898A8D)),
                  ),
                  // InkWell(
                  //   onTap: (){
                  //     AppNavigation.navigate(TeacherSettingsScreen());
                  //   },
                  //   child: Padding(
                  //     padding: EdgeInsets.symmetric(vertical: 14.h),
                  //     child: Row(
                  //       children: [
                  //         CircleAvatar(
                  //           radius: 22,
                  //           backgroundColor: AppColors.primaryColor,
                  //           child: SvgPicture.asset('assets/icons/settings.svg'),
                  //         ),
                  //         SizedBox(width: 20.w),
                  //         Text(
                  //           'Settings'.tr(),
                  //           style: TextStyle(
                  //               fontSize: 14.sp,
                  //               fontWeight: FontWeight.w500,
                  //               color: const Color(0xff1F1F1F)),
                  //         ),
                  //         const Spacer(),
                  //         const Icon(
                  //           Icons.keyboard_arrow_left_sharp,
                  //           color: Color(0xff898A8D),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // InkWell(
                  //   onTap: (){
                  //     AppNavigation.navigate(TeacherReviewsScreen());
                  //
                  //   },
                  //   child: Padding(
                  //     padding: EdgeInsets.symmetric(vertical: 14.h),
                  //     child: Row(
                  //       children: [
                  //         CircleAvatar(
                  //           radius: 22,
                  //           backgroundColor: const Color(0xffFFD237),
                  //           child: SvgPicture.asset('assets/icons/Star.svg'),
                  //         ),
                  //         SizedBox(width: 20.w),
                  //         Text(
                  //           'Reviews'.tr(),
                  //           style: TextStyle(
                  //               fontSize: 14.sp,
                  //               fontWeight: FontWeight.w500,
                  //               color: const Color(0xff1F1F1F)),
                  //         ),
                  //         const Spacer(),
                  //         InkWell(
                  //           onTap: () {},
                  //           child: Container(
                  //             padding: const EdgeInsets.only(
                  //                 left: 13, right: 13, top: 2, bottom: 1),
                  //             decoration: BoxDecoration(
                  //                 color: AppColors.primaryColor,
                  //                 borderRadius: BorderRadius.circular(50)),
                  //             child: Row(
                  //               children: [
                  //                 Text(
                  //                   '2 ${'New'.tr()}',
                  //                   style: TextStyle(
                  //                       fontSize: 9.sp,
                  //                       color: Colors.white,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //                 const Icon(
                  //                   Icons.keyboard_arrow_left_sharp,
                  //                   color: Colors.white,
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: const Color(0xffC4C4C4),
                          child: SvgPicture.asset('assets/icons/attaches.svg'),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Attaches'.tr(),
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff1F1F1F)),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            AppNavigation.navigate(TeacherAttachesScreen());
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 14, right: 14, top: 2, bottom: 1),
                            decoration: BoxDecoration(
                                color: AppColors.orangeColor,
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              children: [
                                Text(
                                  'Action Needed'.tr(),
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_left_sharp,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: const Color(0xffDADADA)),
              ),
              padding:
                  EdgeInsets.only(top: 9, left: 16.w, right: 16.w, bottom: 9.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Account'.tr(),
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color(0xff898A8D)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          AppNavigation.navigate(const TeacherEditProfileScreen());
                        },
                        child: Container(
                          height: 60,
                          padding: const EdgeInsets.only(
                              left: 14, right: 14, top: 2, bottom: 1),
                          decoration: BoxDecoration(
                              color: AppColors.orangeColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Text(
                                'تحديث الملف الشخصي',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_left_sharp,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: InkWell(
                          onTap: () {
                            AppNavigation.navigateOffAll(const SplashScreen());
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.grey.shade300)),
                                child: const Icon(Icons.logout),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                'تسجيل الخروج',
                                style: TextStyle(
                                  color: const Color(0xffFB6D64),
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
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
