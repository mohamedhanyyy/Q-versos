import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/features/student/register/screens/choose_user_type_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/functions/general_functions.dart';

import '../../../../shared/resources/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController(viewportFraction: 1);

  int currentPage=0;


  List<String> introTextAr = [
    'حقق هدفك في تلاوة أو حفظ أو فهم القرآن الكريم بالطريقة التي تناسبك بدعم من المعلمين المهرة',
    'تجربة تعليمية متكاملة تحفزك لتحقيق هدفك وهو النجاح لك ولعائلتك.',
    'الطريقة الذكية لتعلم القرآن'
  ]; List<String> introImg = [
    'assets/images/splash.png',
    'assets/images/girl1.png',
    'assets/images/welldone.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.only(top: 66.h, bottom: 116.h),
              child: SizedBox(
                height: 186,
                width: 186,
                child: PageView.builder(

                  controller: controller,
                  physics: const BouncingScrollPhysics(),
                  itemCount: introImg.length,
                  onPageChanged: (val){
                    setState(() {

                      currentPage=val;
                    });
                  },
                  itemBuilder: (_, index) {
                    return Container(
                      height: 186,
                      width: 186,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(introImg[currentPage]),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 70.h, right: 30.w, left: 30.w),
              width: double.infinity,
              height: 445.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16.sp),
                    topLeft: Radius.circular(16.sp),
                  )),
              child: Column(
                children: [
                  Text('Q-Verse',
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 160.h,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: controller,
                      physics: const BouncingScrollPhysics(),
                      itemCount: introImg.length,
                      onPageChanged: (val){
                        setState(() {
                          currentPage=val;
                        });
                      },
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(introTextAr[currentPage],
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black),
                              textAlign: TextAlign.center),
                        );
                      },
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    // PageController
                    count: 3,
                    effect: const ExpandingDotsEffect(
                        activeDotColor: AppColors.primaryColor),
                    // your preferred effect
                    onDotClicked: (index) {
                      setState(() {});
                    },
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 42.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                            onPressed: () {
                              AppNavigation.navigate(const ChooseRegisterUserTypeScreen());
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                minimumSize: Size(134.w, 56.h),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26.5),
                                    side: const BorderSide(
                                        color: AppColors.orangeColor))),
                            icon: SvgPicture.asset('assets/icons/arrow.svg',
                                colorFilter: GeneralFunctions.getFilterColor(AppColors.orangeColor)),
                            label: Text(
                              'Register'.tr(),
                              style: TextStyle(
                                  color: AppColors.orangeColor,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400),
                            )),
                        ElevatedButton.icon(
                            onPressed: () {
                              AppNavigation.navigate(const ChooseLoginUserTypeScreen());
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                minimumSize: Size(134.w, 56.h),
                                backgroundColor: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.5),
                                ),),
                            icon: SvgPicture.asset('assets/icons/arrow.svg'),
                            label: Text(
                              'Login'.tr(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
