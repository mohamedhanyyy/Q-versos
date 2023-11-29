import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/features/student/register/screens/well_done_screen.dart';
import 'package:untitled/features/student/subscribe/screens/teacher_details_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/functions/general_functions.dart';
import 'package:untitled/shared/resources/colors.dart';

import '../../../../shared/widgets/back_button.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_text_field.dart';

class ShowTeachersScreen extends StatefulWidget {
  const ShowTeachersScreen({super.key});

  @override
  State<ShowTeachersScreen> createState() => _ShowTeachersScreenState();
}

class _ShowTeachersScreenState extends State<ShowTeachersScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: const CustomBackButton(title: 'المعلمين'),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 23.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              onTapOutside: (v) => GeneralFunctions.hideKeyboard(),
              cursorWidth: 1,
              decoration: InputDecoration(
                hintText: 'Search'.tr(),
                prefixIconConstraints:
                    const BoxConstraints(maxHeight: 40, maxWidth: 50),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SvgPicture.asset('assets/icons/Search.svg'),
                ),
                suffixIconConstraints:
                    const BoxConstraints(maxHeight: 40, maxWidth: 50),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: SvgPicture.asset('assets/icons/filter.svg'),
                ),
                hintStyle: TextStyle(
                  color: const Color(0xffA1A8B0),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
                fillColor: const Color(0xffF9FAFB),
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
              ),
            ),
            const SizedBox(height: 20),
            Flexible(
              child: SizedBox(
                height: 550.h,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 20),
                  itemBuilder: (context, index) {
                    return buildTeacherItem();
                  },
                  itemCount: 10,
                  shrinkWrap: true,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 10),
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
                  showAddFamilyBottomSheet(context);
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
}

InkWell buildTeacherItem() {
  return InkWell(
    onTap: () {
      AppNavigation.navigate(const TeacherDetailsScreen());
    },
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xffCDCDCD)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                height: 80,
                width: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/man3.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'أحمد سمير',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const Text(
                    'محمد بن امير',
                    style: TextStyle(fontSize: 9, color: Color(0xff455B68)),
                  ),
                    Text(
                    'Memorizing'.tr(),
                    style: const TextStyle(
                        fontSize: 10,
                        color: Color.fromRGBO(123, 44, 191, 0.80),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: ScreenUtil().screenWidth * 0.6,
                    child: const Text(
                      'نص تجريبي للمدرس .نص تجريبي للمدرس .نص تجريبي للمدرس .نص تجريبي للمدرس .',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF989EA7),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
              top: 0,
              left: 0,
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
                  )))
        ],
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
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                      AppNavigation.navigate(const WellDoneScreen());
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
