import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/feature/onboarding/data/models/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({
    super.key,
    required this.onboardingModel,
  });
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(onboardingModel.image),
        verticalSpace(32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                onboardingModel.title,
                style: TextStyles.font18BlackBold,
              ),
              verticalSpace(16.h),
              Text(
                onboardingModel.description,
                style: TextStyles.font14BlackRegular,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
