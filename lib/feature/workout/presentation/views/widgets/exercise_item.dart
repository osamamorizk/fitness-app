import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/feature/workout/data/models/exercise_model.dart';

class ExerciseItem extends StatelessWidget {
  const ExerciseItem({
    super.key,
    required this.exerciseModel,
  });
  final ExerciseModel exerciseModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92.h,
      width: MediaQuery.sizeOf(context).width * .9,
      decoration: BoxDecoration(
        color: ColorsManger.darkBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: ListTile(
          leading: Image.asset(
            width: 90.w,
            height: 60.h,
            exerciseModel.image,
          ),
          title: Text(
            exerciseModel.name,
            style: TextStyles.font16whiteBold,
          ),
          trailing: const Icon(
            size: 22,
            weight: .4,
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
