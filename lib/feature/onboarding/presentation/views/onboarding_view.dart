import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/spacing.dart';

import 'package:graduation_project/feature/onboarding/data/onbarding_list.dart';
import 'package:graduation_project/feature/onboarding/presentation/views/widgets/actions_onboarding.dart';
import 'package:graduation_project/feature/onboarding/presentation/views/widgets/custom_indicator.dart';

import 'package:graduation_project/feature/onboarding/presentation/views/widgets/onboarding_item.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: onboardingList.length,
                itemBuilder: (context, index) {
                  return OnboardingItem(
                    onboardingModel: onboardingList[index],
                  );
                },
              ),
            ),
            verticalSpace(16.h),
            CustomIndicator(pageController: pageController),
            verticalSpace(16.h),
            const ActionsOnboarding(),
            verticalSpace(45),
          ],
        ),
      ),
    );
  }
}
