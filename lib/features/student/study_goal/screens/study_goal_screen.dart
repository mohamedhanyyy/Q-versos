import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/services/navigation/navigation.dart';

import '../../../../shared/widgets/back_button.dart';
import '../../donate_subscription/screens/my_family_screen.dart';

class StudyGoalScreen extends StatefulWidget {
  const StudyGoalScreen({super.key});

  @override
  State<StudyGoalScreen> createState() => _StudyGoalScreenState();
}

class _StudyGoalScreenState extends State<StudyGoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80.h),
        child: const CustomBackButton(title: 'Study Goal'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(
              'Set your goals'.tr(),
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                fontFamily: 'Inter',
              ),
            ),
              Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 35),
              child: Text(
                'What would you like to learn about?'.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xff455B68),
                  fontFamily: 'Inter',
                ),
              ),
            ),
            ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      AppNavigation.navigate(const MyFamilyScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset('assets/icons/memorize.svg'),
                          const SizedBox(width: 25),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text(
                                'Memorizing the Quran'.tr(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              const SizedBox(height: 2),
                              SizedBox(
                                width: ScreenUtil().screenWidth * 0.7,
                                child: const Text(
                                  'نص تجريبي نص تجريبي نص تجريبي .',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff878787),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                shrinkWrap: true,
                itemCount: 6,
                physics: const BouncingScrollPhysics()),
          ],
        ),
      ),
    );
  }
}
