import 'package:flutter/material.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/feature/diet/presentation/views/diet_general_plans.dart';
import 'package:graduation_project/feature/diet/presentation/views/diet_your_plan.dart';

import 'package:graduation_project/feature/workout/presentation/views/widgets/custom_new_plan_button.dart';

class DietView extends StatelessWidget {
  const DietView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: taps.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Diet',
            style: TextStyles.font22BlueBold,
          ),
          actions: const [
            CustomNewPlanButton(),
          ],
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: ColorsManger.darkBlue,
                width: 2.0,
              ),
              insets: const EdgeInsets.symmetric(horizontal: 30.0),
            ),
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
                text: 'General Plans',
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
  const DietYourPlan(),
  const DietGeneralPlans(),
];
