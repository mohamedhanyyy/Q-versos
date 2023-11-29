import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:untitled/shared/resources/colors.dart';
import 'package:untitled/shared/widgets/back_button.dart';

class TeacherReviewsScreen extends StatefulWidget {
  const TeacherReviewsScreen({super.key});

  @override
  State<TeacherReviewsScreen> createState() => _TeacherReviewsScreenState();
}

class _TeacherReviewsScreenState extends State<TeacherReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: const CustomBackButton(title: 'Reviews'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Rating breakdown'.tr(),
                style: const TextStyle(
                  color: Color(0xff414D55),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '4.7',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      '5 ${'stars'.tr()}',
                      style: const TextStyle(
                        color: Color(0xff696D6E),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 30),
                      child: LinearPercentIndicator(
                        width: 296,
                        trailing: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                        ),
                        padding: EdgeInsets.zero,
                        percent: 0.60,
                        progressColor: const Color(0xffFDCA40),
                        lineHeight: 13,
                        barRadius: const Radius.circular(20),
                        backgroundColor: const Color(0xffFFF5EE),
                      ),
                    ),
                    Text(
                      '4 ${'stars'.tr()}',
                      style: const TextStyle(
                        color: Color(0xff696D6E),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 30),
                      child: LinearPercentIndicator(
                        width: 296,
                        trailing: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                        ),
                        padding: EdgeInsets.zero,
                        percent: 0.2,
                        progressColor: const Color(0xffFDCA40),
                        lineHeight: 13,
                        barRadius: const Radius.circular(20),
                        backgroundColor: const Color(0xffFFF5EE),
                      ),
                    ),
                    Text(
                      '3 ${'stars'.tr()}',
                      style: const TextStyle(
                        color: Color(0xff696D6E),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 30),
                      child: LinearPercentIndicator(
                        width: 296,
                        trailing: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                        ),
                        padding: EdgeInsets.zero,
                        percent: 0.1,
                        progressColor: const Color(0xffFDCA40),
                        lineHeight: 13,
                        barRadius: const Radius.circular(20),
                        backgroundColor: const Color(0xffFFF5EE),
                      ),
                    ),
                    Text(
                      '2 ${'stars'.tr()}',
                      style: const TextStyle(
                        color: Color(0xff696D6E),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 30),
                      child: LinearPercentIndicator(
                        width: 296,
                        trailing: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                        ),
                        padding: EdgeInsets.zero,
                        percent: 0.7,
                        progressColor: const Color(0xffFDCA40),
                        lineHeight: 13,
                        barRadius: const Radius.circular(20),
                        backgroundColor: const Color(0xffFFF5EE),
                      ),
                    ),
                    Text(
                      '1 ${'stars'.tr()}',
                      style: const TextStyle(
                        color: Color(0xff696D6E),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 30),
                      child: LinearPercentIndicator(
                        width: 296,
                        trailing: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                        ),
                        padding: EdgeInsets.zero,
                        percent: 0.8,
                        progressColor: const Color(0xffFDCA40),
                        lineHeight: 13,
                        barRadius: const Radius.circular(20),
                        backgroundColor: const Color(0xffFFF5EE),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 3),
              child: Text(
                'Comments'.tr(),
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff414D55)),
              ),
            ),
            buildCommentItem(),
          ],
        ),
      ),
    );
  }
}

buildCommentItem() {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    color: const Color(0xffFAFBFD),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RatingBar(
            glowColor: Colors.transparent,
            initialRating: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 5),
            ratingWidget: RatingWidget(
                full: const Icon(Icons.star, color: Colors.amber),
                half: const Icon(Icons.star, color: Colors.amber),
                empty: const Icon(Icons.star)),
            itemCount: 5,
            itemSize: 25,
            glow: false,
            unratedColor: Colors.amber.withAlpha(50),
            direction: Axis.horizontal,
            onRatingUpdate: (double value) {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'محمد هاني',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Text(
            'Lorem Ipsum jfsdg sdns ndsnd dhdhs dshd hjdshj sdhsdh zhsdhs sdh shdhd sjkdjk kdjsj skdjds fkfhhd hfdjffjk ds.',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff696D6E)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
  );
}
