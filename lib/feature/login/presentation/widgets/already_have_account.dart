import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';


class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              children: [
                TextSpan(
                  text: "Already have an account yet?",
                  style: TextStyles.font12BlackRegular,
                ),
                TextSpan(
                  text: "  Sign Up",
                  style: TextStyles.font12BlueRegular,
                ),

              ]
          )
      ),
    );
  }
}
