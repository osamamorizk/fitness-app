import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/widgets/form_bar.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/widgets/custom_action_button.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/about_user_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/activity_goal_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/dietary_restrictions_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/dite_kind_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/fitness_level_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/goal_selection_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/helth_concerns_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/type_of_exercise_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/user_motivations_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/work_out_time_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/workout_day_number_view.dart';

class UserDataForm extends StatefulWidget {
  const UserDataForm({super.key});

  @override
  State<UserDataForm> createState() => _UserDataFormState();
}

class _UserDataFormState extends State<UserDataForm> {
  int currentIndex = 0;

  void nextScreen() {
    if (currentIndex < formScreens.length - 1) {
      setState(() {
        currentIndex++;
      });
    }
  }

  void previousScreen() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customDataFormBar(
        () {
          previousScreen();
        },
        (currentIndex + 1 < formScreens.length)
            ? (currentIndex + 1) / formScreens.length
            : 1.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: formScreens[currentIndex],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
              text: 'Continue',
              onPressed: () {
                nextScreen();
              },
            ),
          ),
          verticalSpace(30.h),
        ],
      ),
    );
  }
}

List<Widget> formScreens = <Widget>[
  const AboutUser(),
  const GoalSelectionScreen(),
  const ActivityGoalView(),
  const DietaryRestrictionsView(),
  const DiteKindView(),
  const HealthConcernsView(),
  const FitnessLevelView(),
  const WorkoutDayNumberView(),
  const WorkoutTimeView(),
  const TypeOfExerciseView(),
  const UserMotivationsView(),
];
