import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/feature/home/presentation/views/widgets/plan_box.dart';
import 'package:graduation_project/feature/home/presentation/views/widgets/scan_food_box.dart';

class ScanAndPlanBox extends StatelessWidget {
  const ScanAndPlanBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ScanFoodBox(),
        horizontalSpace(10),
        const YourPlanBox(),
      ],
    );
  }
}
