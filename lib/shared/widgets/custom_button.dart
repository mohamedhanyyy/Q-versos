import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/shared/resources/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  final double? borderRadius;
  final Color? fontColor;
  final double? fontSize;
  final Color? color;
  final double? height;

  const CustomElevatedButton({
    super.key,
    required this.onTap,
    required this.buttonText,
    this.borderRadius,
    this.fontColor,
    this.fontSize,
    this.color,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height??44.h),
        elevation: 0,
        backgroundColor: color ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 40.r),
        ),
      ),
      child: Text(
        buttonText.tr(),
        style: TextStyle(
          color: fontColor ?? Colors.white,
          fontSize: fontSize ?? 15.sp,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
