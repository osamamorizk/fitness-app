import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/feature/sign_up/presentation/views/widgets/have_account.dart';
import 'package:graduation_project/feature/sign_up/presentation/views/widgets/sign_up_actions.dart';
import 'package:graduation_project/feature/sign_up/presentation/views/widgets/signup_form.dart';
import 'package:graduation_project/feature/sign_up/presentation/views/widgets/signup_texts.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(50.h),
              SignupTexts(),
              verticalSpace(30.h),
              SignupForm(),
              verticalSpace(16.h),
              SignUpActions(),
              verticalSpace(10.h),
              HaveAccount(),
              verticalSpace(16.h),
              // SignUpListener(),
            ],
          ),
        ),
      ),
    );
  }
}
