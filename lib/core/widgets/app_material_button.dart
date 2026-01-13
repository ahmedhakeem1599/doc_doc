import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';


class AppMaterialButton extends StatelessWidget {
  const AppMaterialButton({super.key, required this.onPressed, required this.text});

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed ,
      height: 52.h,
      minWidth: double.infinity,
      color: AppColor.mainBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
         text,
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
