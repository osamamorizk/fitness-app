import 'package:flutter/material.dart';
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
        Flexible(
          child: Image.asset(
            fit: BoxFit.fill,
            width: double.infinity,
            // height: MediaQuery.sizeOf(context).height * .6.h,
            onboardingModel.image,
          ),
        ),
        verticalSpace(32),
        Text(
          onboardingModel.title,
          style: TextStyles.font22BlueBold,
        ),
      ],
    );
  }
}
