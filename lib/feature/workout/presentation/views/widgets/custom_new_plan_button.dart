import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class CustomNewPlanButton extends StatelessWidget {
  const CustomNewPlanButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      height: 30.h,
      width: 85.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorsManger.darkBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            size: 18,
            Icons.autorenew,
            color: Colors.white,
          ),
          Text(
            'New plan',
            style: TextStyles.font12WhiteBold,
          )
        ],
      ),
    );
  }
}
