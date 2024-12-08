import 'package:flutter/material.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: ColorsManger.d,
        title: const TabBar(
          labelStyle: TextStyle(fontSize: 20),
          dividerColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(
              text: 'المقالات',
            ),
            Tab(text: 'التبرع بالدم'),
          ],
        ),
      ),
      body: TabBarView(children: taps),
    );
  }
}
