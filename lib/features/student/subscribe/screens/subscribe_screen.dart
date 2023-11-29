import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/features/student/subscribe/screens/show_teachers_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/functions/general_functions.dart';
import 'package:untitled/shared/widgets/custom_button.dart';
import 'package:untitled/shared/widgets/custom_text_field.dart';

import '../../../../shared/resources/colors.dart';
import '../../../../shared/widgets/back_button.dart';

class StudentSubscribeScreen extends StatefulWidget {
  const StudentSubscribeScreen({super.key});

  @override
  State<StudentSubscribeScreen> createState() => _StudentSubscribeScreenState();
}

class _StudentSubscribeScreenState extends State<StudentSubscribeScreen> {
  int selectedWeekIndex = 0;

  int selectedMinutesIndex = 0;

  int selectedPackageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 80.h),
          child: const CustomBackButton(title: 'Select your package')),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Specify your weekly period allotted for studying'.tr(),
                style: TextStyle(
                  color: const Color(0xff101623),
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 17),
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
                              Text('Weekly'.tr(),
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter',
                                    color: selectedWeekIndex != index
                                        ? const Color(0xffA1A8B0)
                                        : Colors.white,
                                  )),
                              Text(
                                '${index + 1}',
                                style: TextStyle(
                                  color: selectedWeekIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                  ),
                );
              }),
            ),
            Text('For'.tr(),
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: StatefulBuilder(builder: (context, setState) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        selectedMinutesIndex = 0;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: selectedMinutesIndex == 0
                              ? AppColors.primaryColor
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: Colors.grey.shade200)),
                          minimumSize: Size(103, 37.h)),
                      child: Text(
                        '15 ${'دقيقة'.tr()}',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            color: selectedMinutesIndex == 0
                                ? Colors.white
                                : const Color(0xff101623)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        selectedMinutesIndex = 1;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: selectedMinutesIndex == 1
                              ? AppColors.primaryColor
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: Colors.grey.shade200)),
                          minimumSize: Size(103, 37.h)),
                      child: Text(
                        '30 دقيقة',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            color: selectedMinutesIndex == 1
                                ? Colors.white
                                : const Color(0xff101623)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        selectedMinutesIndex = 2;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: selectedMinutesIndex == 2
                              ? AppColors.primaryColor
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: Colors.grey.shade200)),
                          minimumSize: Size(103, 37.h)),
                      child: Text(
                        '45 دقيقة',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            fontSize: 12.sp,
                            color: selectedMinutesIndex == 2
                                ? Colors.white
                                : const Color(0xff101623)),
                      ),
                    ),
                  ],
                );
              }),
            ),
            StatefulBuilder(builder: (context, setState) {
              return SizedBox(
                height: 410.h,
                child: GridView(

                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  children: [
                    InkWell(
                        onTap: () {
                          selectedPackageIndex = 0;
                          setState(() {});
                        },
                        child: buildContainer(
                          index: 0,
                          title: 'باقة العائلة',
                          description: 'هذا وصف للخطة ',
                          imagePath: 'assets/icons/twomen.svg',
                          price: '20\$',
                        )),
                    InkWell(
                        onTap: () {
                          selectedPackageIndex = 1;
                          setState(() {});
                        },
                        child: buildContainer(
                          index: 1,
                          title: 'الباقة الفردية',
                          description: 'هذا وصف للخطة ',
                          imagePath: 'assets/icons/twomen.svg',
                          price: '20\$',
                        )),
                    InkWell(
                        onTap: () {
                          selectedPackageIndex = 2;
                          setState(() {});
                        },
                        child: buildContainer(
                          index: 2,
                          title: 'باقة الميزانية',
                          description: 'هذا وصف للخطة ',
                          imagePath: 'assets/icons/budgetPackage.svg',
                          price: '20\$',
                        )),
                    InkWell(
                        onTap: () {
                          selectedPackageIndex = 3;
                          setState(() {});
                        },
                        child: buildContainer(
                          index: 3,
                          title: 'الباقة المرنة',
                          description: 'هذا وصف للخطة ',
                          imagePath: 'assets/icons/flexiblePackage.svg',
                          price: '20\$',
                        )),
                    InkWell(
                        onTap: () {
                          selectedPackageIndex = 3;
                          setState(() {});
                        },
                        child: buildContainer(
                          index: 3,
                          title: 'الباقة المرنة',
                          description: 'هذا وصف للخطة ',
                          imagePath: 'assets/icons/flexiblePackage.svg',
                          price: '20\$',
                        )),
                  ],
                ),
              );
            })
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                  backgroundColor: Colors.white,
                  minimumSize: Size(138.w, 56.h),
                  elevation: 0,
                ),
                onPressed: () {},
                child: Text(
                  'Free trial'.tr(),
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.orangeColor,
                  ),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                  backgroundColor: AppColors.primaryColor,
                  minimumSize: Size(138.w, 56.h),
                  elevation: 0,
                ),
                onPressed: () {
                  showLessonTypeBottomSheet(context);
                },
                child: Text(
                  'Have one'.tr(),
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ))
          ],
        ),
      ),
    );
  }


  void showLessonTypeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        )),
        // isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: 217.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Text(
                      'Lesson Type'.tr(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CustomTextField(
                      hintText: 'Individual',
                      controller: TextEditingController()),
                  SizedBox(height: 30.h),
                  CustomElevatedButton(
                      onTap: () {
                        Navigator.pop(context);
                        AppNavigation.navigate(const ShowTeachersScreen());
                      },
                      buttonText: 'Activate your account',
                      fontSize: 16,
                      height: 50.h),
                ],
              ),
            ),
          );
        });
  }

  buildContainer(
      {required int index,
      required String imagePath,
      required String price,
      required String description,
      required String title}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 1)
        ],
        color: selectedPackageIndex == index
            ? AppColors.primaryColor
            : Colors.white,
      ),
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            imagePath,
            colorFilter: GeneralFunctions.getFilterColor(
                selectedPackageIndex == index
                    ? Colors.white
                    : AppColors.primaryColor),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.h, bottom: 4),
            child: Row(
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.orangeColor,
                  ),
                ),
                Card(
                  elevation: 0,
                  color: const Color(0xffFFF5EE),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child:   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    child: Text(
                      'Most popular'.tr(),
                      style: const TextStyle(
                          color: AppColors.orangeColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 11),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            description,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: selectedPackageIndex == index
                    ? Colors.white
                    :   Colors.grey.shade500),
          ),
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: selectedPackageIndex == index
                      ? Colors.white
                      : AppColors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
