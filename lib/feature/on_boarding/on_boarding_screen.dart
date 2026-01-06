import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/widgets/custom_Text.dart';
import 'package:docdoc/feature/on_boarding/widgets/doc_logo_and_name.dart';
import 'package:docdoc/feature/on_boarding/widgets/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../core/helper/extentions.dart';
import '../../core/routing/routes.dart';
import '../../core/theming/styles.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 22.0.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                Gap(40.h),
                const DoctorImageAndText(),
                Gap(32.h),
                MaterialButton(
                  onPressed: () => context.pushReplacementNamed(AppRouteString.loginScreen),
                  height: 52.h,
                  minWidth: 312.w,
                  color: AppColor.mainBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: CustomText(
                    text: "Get Started",
                    style: TextStyles.font16White600Wight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
