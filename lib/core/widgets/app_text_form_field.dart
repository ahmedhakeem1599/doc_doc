import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';


class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
  });

  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      style: TextStyles.font14darkBlueMedium,
      cursorColor: AppColor.mainBlue,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        hintText: hintText,
        hintStyle: TextStyles.font14lightGrayRegular,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColor.mainBlue,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.lightGray),
          borderRadius: BorderRadius.circular(16.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.mainBlue),
          borderRadius: BorderRadius.circular(16.r),
        ),
        filled: true,
        fillColor: AppColor.moreLightGray,
      ),
    );
  }
}
