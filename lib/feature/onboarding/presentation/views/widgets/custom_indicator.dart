import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/feature/onboarding/data/onbarding_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: onboardingList.length,
      effect: WormEffect(
          spacing: 14.w,
          dotHeight: 10.h,
          dotWidth: 10.w,
          dotColor: ColorsManger.inActiveDotColor,
          activeDotColor: ColorsManger.darkBlue),
    );
  }
}
