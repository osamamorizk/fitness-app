import 'package:flutter/material.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/feature/workout/presentation/views/widgets/exercise_item.dart';

class ExerciseListView extends StatelessWidget {
  const ExerciseListView({super.key, required this.exerciseGroup});
  final String exerciseGroup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        titleSpacing: 0,
        title: Text(
          '$exerciseGroup Exercises',
          style: TextStyles.font16BlackBold,
        ),
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: ColorsManger.darkBlue, size: 22),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemBuilder: (context, index) => const ExerciseItem(),
          itemCount: 8,
        ),
      ),
    );
  }
}
