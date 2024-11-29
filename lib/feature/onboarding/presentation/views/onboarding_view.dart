import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/extensions.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/feature/onboarding/data/onbarding_list.dart';

import 'package:graduation_project/feature/onboarding/presentation/views/widgets/onboarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController pageController = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (newIndex) {
                if (newIndex == onboardingList.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              controller: pageController,
              itemCount: onboardingList.length,
              itemBuilder: (context, index) {
                return OnboardingItem(
                  onboardingModel: onboardingList[index],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // TextButton(
              //   child: Text(!isLast ? 'Next' : 'Done'),
              //   onPressed: () {
              //     pageController.nextPage(
              //       duration: const Duration(microseconds: 200),
              //       curve: Curves.bounceIn,
              //     );
              //   },
              // ),
              SmoothPageIndicator(
                controller: pageController,
                count: onboardingList.length,
                effect: WormEffect(
                    spacing: 14.w,
                    dotHeight: 12.h,
                    dotWidth: 12.w,
                    dotColor: ColorsManger.inActiveDotColor,
                    activeDotColor: ColorsManger.darkBlue),
              ),
              TextButton(
                onPressed: !isLast
                    ? () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.bounceIn,
                        );
                      }
                    : () {
                        context.pushNamed(Routes.login);
                      },
                child: Text(!isLast ? 'Next' : 'Done'),
              ),
            ],
          ),
          verticalSpace(50.h),
        ],
      ),
    );
  }
}
