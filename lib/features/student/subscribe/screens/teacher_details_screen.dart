import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/widgets/custom_button.dart';

import '../../../../shared/resources/colors.dart';

class TeacherDetailsScreen extends StatefulWidget {
  const TeacherDetailsScreen({super.key});

  @override
  State<TeacherDetailsScreen> createState() => _TeacherDetailsScreenState();
}

class _TeacherDetailsScreenState extends State<TeacherDetailsScreen> {
  int selectedSessionsOrRequests = 0;
  int selectedWeekIndex = 0;
  int selectedTimeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 300.h),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset('assets/images/profilebackground.png',
                width: double.infinity, fit: BoxFit.fill),
            Positioned(
                top: 57.h,
                right: 32.w,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: 44.sp,
                  height: 44.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.more_vert),
                )),
            Positioned(
              top: 57.h,
              left: 32.w,
              child: InkWell(
                onTap: () {
                  AppNavigation.back();
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: 44.sp,
                  height: 44.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ),
            Positioned(
                top: 63.h,
                child: Text(
                  'Teacher details'.tr(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 148.h,
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
                              'محمد هاني',
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
                              padding: EdgeInsets.only(top: 5.h, bottom: 6.h),
                              child: SizedBox(
                                width: 211.w,
                                child: Text(
                                  'وصف تجريبي وصف تجريبي وصف تجريبي وصف تجريبي ',
                                  style: TextStyle(
                                    fontSize: 13.sp,
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
            Positioned(
                top: 160.h,
                right: 20.w,
                child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.5),
                    ),
                    color: AppColors.primaryColor.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/starPurple.svg'),
                          const SizedBox(width: 2),
                          Text(
                            '4.7',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryColor,
                                fontSize: 12.sp),
                          )
                        ],
                      ),
                    ))),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 25.w),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Column(
            //         children: [
            //           Text(
            //             'Male'.tr(),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
              child: Image.asset(
                'assets/images/video.png',
                width: double.infinity,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: SizedBox(
                      child: CustomElevatedButton(
                        onTap: () {
                          selectedSessionsOrRequests = 0;
                          setState(() {});
                        },
                        buttonText: 'Groups',
                        borderRadius: 8,
                        color: selectedSessionsOrRequests == 0
                            ? AppColors.primaryColor
                            : const Color(0xffF5F7FF),
                        fontColor: selectedSessionsOrRequests == 1
                            ? AppColors.primaryColor
                            : Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Flexible(
                    child: SizedBox(
                      child: CustomElevatedButton(
                        onTap: () {
                          selectedSessionsOrRequests = 1;
                          setState(() {});
                        },
                        buttonText: 'Individually',
                        borderRadius: 8,
                        color: selectedSessionsOrRequests == 1
                            ? AppColors.primaryColor
                            : const Color(0xffF5F7FF),
                        fontColor: selectedSessionsOrRequests == 0
                            ? AppColors.primaryColor
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (selectedSessionsOrRequests == 0) ...[
                Padding(
                padding:
                    const EdgeInsets.only(left: 32, right: 32, top: 18, bottom: 10),
                child: Text(
                  'All Groups'.tr(),
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade100),
                    ),
                    child:   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Group A'.tr(),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Normal'.tr(),
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Text(
                              '3 ${'Students enrolled'.tr()}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff78746D),
                              ),
                            )
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xffBEBAB3),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade100),
                    ),
                    child:   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Group A'.tr(),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Normal'.tr(),
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Text(
                              '3 ${'Students enrolled'.tr()}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff78746D),
                              ),
                            )
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xffBEBAB3),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade100),
                    ),
                    child:   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Group A'.tr(),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Normal'.tr(),
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Text(
                              '3 ${'Students enrolled'.tr()}',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff78746D),
                              ),
                            )
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xffBEBAB3),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ] else ...[
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: StatefulBuilder(builder: (context, setState) {
                  return SizedBox(
                    height: 70.h,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            selectedWeekIndex = index;
                            setState(() {});
                          },
                          child: Container(
                            padding: EdgeInsets.only(top: 14.h),
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            width: 46.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: selectedWeekIndex == index
                                  ? AppColors.primaryColor
                                  : Colors.white,
                              border:
                                  Border.all(color: Colors.black12, width: 0.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  dates[index],
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    color: selectedWeekIndex == index
                                        ? Colors.white
                                        : const Color(0xffA1A8B0),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '${index + 21}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      color: selectedWeekIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                    ),
                  );
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: StatefulBuilder(builder: (context, setState) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 50),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          selectedTimeIndex = index;
                          setState(() {});
                        },
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              color: selectedTimeIndex == index
                                  ? AppColors.primaryColor
                                  : Colors.grey.shade400,
                              width: selectedTimeIndex == index ? 1 : 0.5,
                            ),
                          ),
                          child: Center(child: Text('${index + 10}:00 AM')),
                        ),
                      );
                    },
                    itemCount: 6,
                    shrinkWrap: true,
                  );
                }),
              )
            ],

            Padding(
              padding: const EdgeInsets.only(right: 20,left:20,top: 15,bottom: 25),
              child: CustomElevatedButton(onTap: (){}, buttonText:'إرسال طلب الإشتراك',height: 60),
            ),
          ],
        ),
      ),
    );
  }

  List<String> dates = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
}
