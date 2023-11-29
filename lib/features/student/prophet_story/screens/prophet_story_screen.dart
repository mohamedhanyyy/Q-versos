import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/shared/widgets/back_button.dart';

class ProphetStoryScreen extends StatefulWidget {
  const ProphetStoryScreen({super.key});

  @override
  State<ProphetStoryScreen> createState() => _ProphetStoryScreenState();
}

class _ProphetStoryScreenState extends State<ProphetStoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80.h),
        child: const CustomBackButton(title: 'Prophet Stories'),
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 30),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 210.h),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/mag.png'),
                SizedBox(
                  width: 150.w,
                  child: Text(
                    'Prophet Mohamed Story'.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }
}
