import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/custom_Text.dart';


class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/doc_logo.svg" , width: 38.w , height: 38.h),
        Gap(10.w),
        CustomText(text: "Docdoc" , style: TextStyles.font24BlackBold)

      ],
    );
  }
}
