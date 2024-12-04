import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/functions.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/type_of_exercise_view.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/work_out_time_view.dart';

class UserDataForm extends StatelessWidget {
  const UserDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customDataFormBar(),
      body: const TypeOfExerciseView(),
    );
  }
}
