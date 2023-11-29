import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/shared/widgets/custom_text_field.dart';

import '../../../../shared/resources/colors.dart';
import '../../../../shared/widgets/custom_button.dart';

class AddAppointmentScreen extends StatefulWidget {
  const AddAppointmentScreen({super.key});

  @override
  State<AddAppointmentScreen> createState() => _AddAppointmentScreenState();
}

class _AddAppointmentScreenState extends State<AddAppointmentScreen> {
  int selectedWeekIndex = 0;
  int selectedGroupOrIndividual = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 20),
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
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'New Appointment'.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: CustomTextField(
                fillColor: const Color(0xffE5E7EB).withOpacity(0.5),
                hintColor: Colors.black,
                hintText: 'Session title'.tr(),
                controller: TextEditingController(),
                // maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 13, right: 13, top: 16, bottom: 6),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Session Type'.tr(),
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff101623)),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: Row(
                children: [
                  Flexible(
                    child: SizedBox(
                      child: CustomElevatedButton(
                        onTap: () {
                          selectedGroupOrIndividual = 0;
                          setState(() {});
                        },
                        buttonText: 'Individual'.tr(),
                        borderRadius: 8,
                        color: selectedGroupOrIndividual == 0
                            ? AppColors.primaryColor
                            : const Color(0xffF5F7FF),
                        fontColor: selectedGroupOrIndividual == 1
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
                          selectedGroupOrIndividual = 1;
                          setState(() {});
                        },
                        buttonText: 'Group'.tr(),
                        borderRadius: 8,
                        color: selectedGroupOrIndividual == 1
                            ? AppColors.primaryColor
                            : const Color(0xffF5F7FF),
                        fontColor: selectedGroupOrIndividual == 0
                            ? AppColors.primaryColor
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
              child: CustomTextField(
                fillColor: const Color(0xffE5E7EB).withOpacity(0.5),
                hintColor: Colors.black,
                hintText:'أدخل رقم هاتف الطالب أو الكود',
                maxLines: 4,
                contentVerticalPadding: 10,
                controller: TextEditingController(),
                // maxLines: 1,
              ),
            ),
            SizedBox(
              height: 70.h,
              child: ListView.builder(
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
                          Text('Mon',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                                color: selectedWeekIndex == index
                                    ? Colors.white
                                    : const Color(0xffA1A8B0),
                              )),
                          Text(
                            '${index + 20}',
                            style: TextStyle(
                              color: selectedWeekIndex != index
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                            ),
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
            ),
            const Divider(
              height: 60,
              thickness: 1,
              color: Color(0xffE8F3F1),
              endIndent: 13,
              indent: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 13, right: 13, top: 16, bottom: 6),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Start Date'.tr(),
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff101623)),
                ),
              ),
            ),
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
                            selectedWeekIndex = index;

                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(103.w, 37),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Color(0xffCDCDCD)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 0,
                              backgroundColor: selectedWeekIndex == index
                                  ? AppColors.primaryColor
                                  : Colors.white),
                          child: Text(
                            '09:00 AM',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: selectedWeekIndex != index
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: CustomElevatedButton(
                  onTap: () {}, buttonText: 'Add', height: 50.h),
            )
          ],
        ),
      ),
    );
  }

  List<String> dates = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
}
