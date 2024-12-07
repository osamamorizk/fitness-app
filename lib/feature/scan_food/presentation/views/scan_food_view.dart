import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/feature/scan_food/presentation/views/widgets/camera_window.dart';

class ScanFoodView extends StatelessWidget {
  const ScanFoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(50),
            Text(
              'Scan your meal',
              style: TextStyles.font28DarkBlueBold,
            ),
            verticalSpace(16.h),
            Text(
              'Take a picture of your meal to get calories and nutrition information of your plate.',
              style: TextStyles.font14greyNormal,
            ),
            verticalSpace(50.h),
            const Expanded(child: CameraWindow())
          ],
        ),
      ),
    );
  }
}
