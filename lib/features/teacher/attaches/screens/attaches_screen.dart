import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/shared/widgets/back_button.dart';
import 'package:untitled/shared/widgets/custom_button.dart';

import '../../../../shared/resources/colors.dart';
import '../../../student/home/screens/student_home_screen.dart';

class TeacherAttachesScreen extends StatefulWidget {
  const TeacherAttachesScreen({super.key});

  @override
  State<TeacherAttachesScreen> createState() => _TeacherAttachesScreenState();
}

class _TeacherAttachesScreenState extends State<TeacherAttachesScreen> {
  int selectedWeekIndex = 0;
  int selectedSlot = 0;
  int? selectedHour;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: CustomBackButton(title: 'المرفقات'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            DottedBorder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              radius: const Radius.circular(5),
              borderType: BorderType.RRect,
              child: SizedBox(
                height: 84,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'قم بتحميل ملفاتك',
                      style: TextStyle(
                        color: Color(0xff8E8E8E),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 15),
                    SvgPicture.asset('assets/icons/uploadIcon.svg'),
                  ],
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
                              Text('Weekly',
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
            StatefulBuilder(builder: (context, setState) {
              return SizedBox(
                height: 40.h,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          child: Container(
                            width: 103.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: selectedSlot == index
                                    ? AppColors.primaryColor
                                    : Colors.white,
                                border: Border.all(color: Colors.black12,width: 0.5)),
                            child: Center(
                              child: Text(
                                'Slot ${index + 1}',
                                style: TextStyle(
                                  color: selectedSlot != index
                                      ? AppColors.primaryColor
                                      : Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            selectedSlot = index;
                            setState(() {});
                          },
                        ));
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              );
            }),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: StatefulBuilder(builder: (context, setState) {
                return SizedBox(
                  height: 38.h,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: ElevatedButton(
                          onPressed: () {
                            selectedHour = index;

                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(103.w, 37),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 0.5,
                                color: Color(0xffCDCDCD),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 0,
                            backgroundColor: selectedHour == index
                                ? AppColors.primaryColor
                                : Colors.white,
                          ),
                          child: Text(
                            '${index + 5}:00 AM',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: selectedHour != index
                                  ? AppColors.primaryColor
                                  : Colors.white,
                            ),
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
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: [
            CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.primaryColor.withOpacity(0.5),
                child: Image.asset('assets/images/pdfDoc.png')),
            SizedBox(
              width: 12.w,
            ),
            SizedBox(
                width: 255.w,
                child: CustomElevatedButton(
                  onTap: () {},
                  buttonText: 'تأكيد',
                  height: 50.h,
                )),
          ],
        ),
      ),
    );
  }
}
