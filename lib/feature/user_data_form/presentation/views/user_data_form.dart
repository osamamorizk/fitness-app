import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/functions.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/dietary_restrictions_view.dart';

class UserDataForm extends StatelessWidget {
  const UserDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customDataFormBar(),
      body: const DietaryRestrictionsView(),
    );
  }
}
