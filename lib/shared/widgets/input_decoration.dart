import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double border = 30.r;
Color defaultBorderColor = const Color.fromRGBO(60, 60, 67, 0.60);

InputDecoration customInputDecoration({
  required String hintText,
  IconButton? suffixIcon,
  double? borderRadius,
  String? hintFontFamily,
  Icon? prefixIcon,
  Color? hintColor,
  Color? borderColor,
  double? contentVerticalPadding,
  double? contentHorizontalPadding,
  FontWeight? fontWeight,
  double? fontSize,
  Color? fillColor,
  Color? prefixIconColor,
  bool? enabled,
}) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: hintColor ?? const Color(0x3c3c4399),
      fontSize: fontSize ?? 14.sp,
      fontFamily: hintFontFamily,
      fontWeight: fontWeight ?? FontWeight.w400,
    ),
    enabled: enabled ?? true,
    disabledBorder:OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? border),
      borderSide: BorderSide(color: borderColor ?? defaultBorderColor),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? border),
      borderSide: BorderSide(color: borderColor ?? defaultBorderColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? border),
      borderSide: BorderSide(color: borderColor ?? defaultBorderColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? border),
      borderSide: BorderSide(color: borderColor ?? defaultBorderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? border),
      borderSide: BorderSide(color: borderColor ?? defaultBorderColor),
    ),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? border)),
    fillColor: fillColor ?? Colors.white,
    filled: true,
    contentPadding: EdgeInsets.symmetric(
        vertical: contentVerticalPadding ?? 5.h,
        horizontal: contentHorizontalPadding ?? 16.w),
    suffixIcon: suffixIcon != null
        ? Padding(
            padding: EdgeInsets.only(left: 12.w, right: 12.w),
            child: (suffixIcon),
          )
        : null,
    prefixIcon: prefixIcon != null
        ? Padding(
            padding: EdgeInsets.only(left: 12.w, right: 12.w),
            child: prefixIcon,
          )
        : null,
  );
}
