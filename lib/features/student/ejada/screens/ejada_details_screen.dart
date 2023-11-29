import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/resources/colors.dart';
import '../../../../shared/widgets/back_button.dart';

class EjadaDetailsScreen extends StatefulWidget {
  final String title;

  const EjadaDetailsScreen({super.key, required this.title});

  @override
  State<EjadaDetailsScreen> createState() => _EjadaDetailsScreenState();
}

class _EjadaDetailsScreenState extends State<EjadaDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 110),
        child: CustomBackButton(title: 'Surah details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Text(
                ' نص تجريبي نص تجريبي نص تجريبي نص تجريبي نص تجريبي .',
                style: TextStyle(
                  color: const Color(0xff455B68),
                  fontWeight: FontWeight.w700,
                  fontSize: 23.sp,
                ),
              ),
            ),
            SizedBox(height: 25.h),
            Image.asset(
              'assets/images/booklamp.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Text('All Videos'.tr(),
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp)),
            ),
            buildRow('Video 1, watch now', () {}),
            buildRow('Video 2, watch now', () {}),
            buildRow('Video 3, watch now', () {}),
          ],
        ),
      ),
    );
  }

   buildRow(String title, Function action) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          activate();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 55.sp,
              height: 55.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: AppColors.primaryColor,
              ),
              child: const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 12,
                  child: Icon(
                    Icons.play_arrow,
                    color: AppColors.primaryColor,
                    size: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.tr(),
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter'),
                ),
                Text(
                  'نص تجريبي نص تجريبي نص تجريبي .',
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: Colors.grey.shade500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
