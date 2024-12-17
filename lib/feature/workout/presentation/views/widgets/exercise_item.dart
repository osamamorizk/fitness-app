import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/app_assets.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class ExerciseItem extends StatelessWidget {
  const ExerciseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      decoration: const BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(width: .3, color: Colors.grey))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            Assets.imagesExerciseItem,
            width: 85.w,
          ),
          horizontalSpace(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Squats',
                style: TextStyles.font16BlackBold,
              ),
              verticalSpace(8),
              Text(
                '30 min',
                style: TextStyles.font16BlackRegular,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
