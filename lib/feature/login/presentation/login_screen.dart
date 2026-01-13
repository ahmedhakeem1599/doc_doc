import 'package:docdoc/core/widgets/app_material_button.dart';
import 'package:docdoc/feature/login/presentation/widgets/already_have_account.dart';
import 'package:docdoc/feature/login/presentation/widgets/terms_and_policy_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),

                VerticalSpace(8),

                Text(
                  "We're excited to have you back, can't wait to\n see what you've been up to since you last\n logged in.",
                  style: TextStyles.font14grayRegular,
                ),

                VerticalSpace(36),

                Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      AppTextFormField(hintText: "Email"),

                      VerticalSpace(16),

                      AppTextFormField(
                        hintText: "Password",
                        obscureText: obscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(
                            obscureText
                                ? CupertinoIcons.eye_slash
                                : CupertinoIcons.eye,
                          ),
                        ),
                      ),

                      VerticalSpace(16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: TextStyles.font12BlueRegular,
                          ),
                        ],
                      ),

                      VerticalSpace(32),

                      AppMaterialButton(onPressed: (){}, text: "Login"),

                      VerticalSpace(30),

                      TermsAndPolicyText(),

                      VerticalSpace(30),

                      AlreadyHaveAccount(),


                    ],
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
