import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_Text.dart';


class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SvgPicture.asset("assets/svgs/doc_logo_low_opacty.svg"),
            Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withValues(alpha: 0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4],
                ),
              ),
              child: Image.asset("assets/images/doctor_image.png"),
            ),
            Positioned(
              bottom: 0,
              child: CustomText(
                text: "Best Doctor \n Appointment App",
                style: TextStyles.font32BlueBold,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Gap(10.h),
        CustomText(
          text:
          "Manage and schedule all of your medical appointments \n easily with Docdoc to get a new experience.",
          style: TextStyles.font10Gray400Wight.copyWith(height: 1.6),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
