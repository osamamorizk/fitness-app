import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/feature/workout/data/models/muscle_model.dart';

class MuscleItem extends StatelessWidget {
  const MuscleItem({
    super.key,
    required this.muscleModel,
  });
  final MuscleModel muscleModel;
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
            muscleModel.image,
          ),
          title: Text(
            muscleModel.name,
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
