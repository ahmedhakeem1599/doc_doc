import 'package:docdoc/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class TextStyles {

  static TextStyle font24BlackBold = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black
  );

  static TextStyle font32BlueBold  = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColor.mainBlue
  );

  static TextStyle font10GrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColor.gray
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white
  );

  static TextStyle font24BlueBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColor.mainBlue
  );

  static TextStyle font14grayRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.gray
  );

  static TextStyle font14darkBlueMedium = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColor.darkBlue
  );

  static TextStyle font14lightGrayRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColor.lightGray
  );

  static TextStyle font12BlueRegular = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.mainBlue
  );

  static TextStyle font12GrayRegular = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColor.gray
  );

  static TextStyle font12BlackRegular = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: Colors.black
  );
}