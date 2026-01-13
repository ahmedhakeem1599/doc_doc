import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';


class TermsAndPolicyText extends StatelessWidget {
  const TermsAndPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              children: [
                TextSpan(
                  text: "By logging, you agree to our ",
                  style: TextStyles.font12GrayRegular,
                ),
                TextSpan(
                  text: "Terms & Conditions",
                  style: TextStyles.font12BlackRegular,
                ),
                TextSpan(
                  text: " and ",
                  style: TextStyles.font12GrayRegular,
                ),
                TextSpan(
                  text: "Privacy Policy.",
                  style: TextStyles.font12BlackRegular.copyWith(height: 1.7),
                ),

              ]
          )
      ),
    );
  }
}
