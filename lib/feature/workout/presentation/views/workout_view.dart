import 'package:flutter/material.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/feature/workout/presentation/views/exercise_view.dart';
import 'package:graduation_project/feature/workout/presentation/views/general_plans_view.dart';
import 'package:graduation_project/feature/workout/presentation/views/widgets/custom_new_plan_button.dart';
import 'package:graduation_project/feature/workout/presentation/views/your_plan_view.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: taps.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Workout',
            style: TextStyles.font22BlueBold,
          ),
          actions: const [
            CustomNewPlanButtom(),
          ],
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelPadding: const EdgeInsets.all(0),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 8),
            labelStyle: TextStyles.font14BlackRegular,
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: ColorsManger.darkBlue,
            labelColor: Colors.black,
            unselectedLabelColor: ColorsManger.darkerGrey,
            tabs: const [
              Tab(
                text: 'Your plan',
              ),
              Tab(
                text: 'General plans',
              ),
              Tab(
                text: 'Exercises',
              ),
            ],
          ),
        ),
        body: TabBarView(children: taps),
      ),
    );
  }
}

List<Widget> taps = [
  const YourPlanView(),
  const GeneralPlansView(),
  const ExerciseView()
];
