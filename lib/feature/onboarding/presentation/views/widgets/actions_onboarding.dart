import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/extensions.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/widgets/custom_action_button.dart';
import 'package:graduation_project/feature/onboarding/presentation/views/widgets/login_button.dart';

class ActionsOnboarding extends StatelessWidget {
  const ActionsOnboarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomButton(
            text: 'Get Started',
            onPressed: () {
              context.pushNamed(Routes.signUp);
            },
          ),
          verticalSpace(16.h),
          LoginButton(onTap: () => context.pushNamed(Routes.login)),
        ],
      ),
    );
  }
}
