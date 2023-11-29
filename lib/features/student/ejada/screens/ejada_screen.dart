import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/student/ejada/screens/ejada_details_screen.dart';
import 'package:untitled/services/navigation/navigation.dart';
import 'package:untitled/shared/widgets/back_button.dart';

import '../../../../shared/resources/colors.dart';

class EjadaScreen extends StatefulWidget {
  const EjadaScreen({super.key});

  @override
  State<EjadaScreen> createState() => _EjadaScreenState();
}

class _EjadaScreenState extends State<EjadaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 110),
        child: CustomBackButton(title: 'Short Surah'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Short Surah memorizing'.tr(),
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                'نص تجريبي .نص تجريبي .نص تجريبي .نص تجريبي .',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w700,
                  fontSize: 23.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.h),
              child: Text('All surahs'.tr(),
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp)),
            ),
            buildSurah('النصر 3 ايات', () {
              AppNavigation.navigate(
                  const EjadaDetailsScreen(title: 'النصر 3 ايات'));
            }),
            buildSurah('الإخلاص 4 أيات', () {
              AppNavigation.navigate(
                  const EjadaDetailsScreen(title: 'الإخلاص 4 أيات'));
            }),
            buildSurah('الفلق 5 أيات', () {
              AppNavigation.navigate(
                  const EjadaDetailsScreen(title: 'الفلق 5 أيات'));
            }),
          ],
        ),
      ),
    );
  }

  buildSurah(String title, Function? action) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          action!();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              width: 55.sp,
              height: 55.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: AppColors.primaryColor,
              ),
              child: const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 14,
                  child: Icon(
                    Icons.play_arrow,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter'),
                ),
                Text(
                  'نص تجريبي نص تجريبي نص تجريبي.',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: Colors.grey.shade500,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
