import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/app_assets.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class YourPlanBox extends StatelessWidget {
  const YourPlanBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.h,
      width: MediaQuery.sizeOf(context).width / 2.4.w,
      decoration: BoxDecoration(
        image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesScanBoxBackground)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.iconsYourPlan,
            color: Colors.white,
          ),
          verticalSpace(12),
          Text(
            'Your Plan',
            style: TextStyles.font14WhiteBold,
          )
        ],
      ),
    );
  }
}
