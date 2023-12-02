import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../services/navigation/navigation.dart';
import '../../../../shared/resources/colors.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_text_field.dart';
import '../../register/screens/well_done_screen.dart';

class MyFamilyScreen extends StatefulWidget {
  const MyFamilyScreen({super.key});

  @override
  State<MyFamilyScreen> createState() => _MyFamilyScreenState();
}

class _MyFamilyScreenState extends State<MyFamilyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'عائلتي',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 160.h),
                SvgPicture.asset('assets/icons/nomembers.svg'),
                Text(
                  'No Members!'.tr(),
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff263238)),
                ),
                Text(
                  'You don’t have any members yet. May you add your children?'
                      .tr(),
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB0B0B0)),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 15),
                  child: ElevatedButton(

                    onPressed: () {
                      showAddFamilyBottomSheet(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),

                        ),
                        elevation: 0,
                        minimumSize: Size(188.w, 48.h)),
                    child: Text(
                      'Add a member'.tr(),
                      style: const TextStyle(
                        fontSize: 15,
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(8),
                //           side: const BorderSide(
                //               color: AppColors.orangeColor, width: 1)),
                //       backgroundColor: Colors.white,
                //       elevation: 0,
                //       minimumSize: Size(188.w, 48.h)),
                //   child: Text(
                //     'Generate a code'.tr(),
                //     style: const TextStyle(
                //       fontSize: 15,
                //       fontFamily: 'Inter',
                //       color: AppColors.orangeColor,
                //       fontWeight: FontWeight.w700,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showAddFamilyBottomSheet(BuildContext context) {
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
              height: 360.h,
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
                      'New family member'.tr(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CustomTextField(
                      hintText: 'Name', controller: TextEditingController()),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: CustomTextField(
                        hintText: 'Age', controller: TextEditingController()),
                  ),
                  CustomTextField(
                      hintText: 'Gender', controller: TextEditingController()),
                  SizedBox(height: 30.h),
                  CustomElevatedButton(
                      onTap: () {
                        Navigator.pop(context);
                        AppNavigation.navigate(const WellDoneFamilyScreen());
                      },
                      buttonText: 'Add',
                      fontSize: 16,
                      height: 50.h),
                ],
              ),
            ),
          );
        });
  }
}
