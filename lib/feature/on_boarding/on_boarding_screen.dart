import 'package:docdoc/feature/on_boarding/widgets/doc_logo_and_name.dart';
import 'package:docdoc/feature/on_boarding/widgets/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../core/helper/extentions.dart';
import '../../core/routing/routes.dart';
import '../../core/widgets/app_material_button.dart';


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
                AppMaterialButton(
                  onPressed: () => context.pushReplacementNamed(AppRouteString.loginScreen),
                  text: "Get Started",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
