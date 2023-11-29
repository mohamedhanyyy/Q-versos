import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/shared/widgets/back_button.dart';

import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_text_field.dart';

class TeacherEditProfileScreen extends StatefulWidget {
  const TeacherEditProfileScreen({super.key});

  @override
  State<TeacherEditProfileScreen> createState() =>
      _TeacherEditProfileScreenState();
}

class _TeacherEditProfileScreenState extends State<TeacherEditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 90),
          child: CustomBackButton(title: 'تحديث الملف الشخصي'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DottedBorder
                      (
                      padding: const EdgeInsets.symmetric(horizontal: 20),

                      radius: const Radius.circular(5),
                      borderType: BorderType.RRect,
                      child: SizedBox(
                        height: 84,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'ارفق صورة شخصية',
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
                    DottedBorder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      radius: const Radius.circular(5),
                      borderType: BorderType.RRect,
                      child: SizedBox(
                        // width: double.infinity,
                        height: 84,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'ارفق فيديو تعريفي',
                              style: TextStyle(
                                color: Color(0xff8E8E8E),
                                fontWeight: FontWeight.w400,

                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(width: 15),
                            SvgPicture.asset('assets/icons/uploadIcon.svg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomTextField(
                    hintText: 'الاسم',
                    controller: TextEditingController(),
                  ),
                ),
                CustomTextField(
                    hintText: 'رقم الهاتف',
                    textInputType: TextInputType.phone,
                    controller: TextEditingController()),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomTextField(
                      hintText: 'البريد الإلكتروني',
                      controller: TextEditingController()),
                ),
                CustomTextField(
                    hintText: 'الرواية', controller: TextEditingController()),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomTextField(
                      hintText: 'نبذة عني',
                      controller: TextEditingController()),
                ),

                CustomTextField(
                    hintText: 'كلمة المرور',
                    controller: TextEditingController()),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomTextField(
                      hintText: 'تأكيد كلمة المرور',
                      controller: TextEditingController()),
                ),

              ],
            ),
          ),
        ),bottomNavigationBar: Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child:
      CustomElevatedButton(onTap: () {}, buttonText: "تأكيد"),
    ),);
  }
}
