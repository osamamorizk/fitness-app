import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:graduation_project/core/helpers/spacing.dart';

import 'package:graduation_project/feature/workout/data/models/exercise_model.dart';
import 'package:graduation_project/feature/workout/presentation/views/widgets/exercise_item.dart';

class ExerciseView extends StatelessWidget {
  const ExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          verticalSpace(8),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => verticalSpace(16),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "Comming Soon",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: ExerciseItem(
                  exerciseModel: exerciseList[index],
                ),
              ),
              itemCount: exerciseList.length,
            ),
          ),
        ],
      ),
    );
  }
}
