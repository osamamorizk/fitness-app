import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/custom_action_button.dart';

class SignUpActions extends StatelessWidget {
  const SignUpActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: () {
            // if (context.read<SignupCubit>().formKey.currentState!.validate()) {
            //   context.read<SignupCubit>().signUp(
            //       signUpData: SignUpData(
            //           phone: context.read<SignupCubit>().numberController.text,
            //           name: context.read<SignupCubit>().nameController.text,
            //           email: context.read<SignupCubit>().emailController.text,
            //           password:
            //               context.read<SignupCubit>().passwordController.text,
            //           confirmPassword: context
            //               .read<SignupCubit>()
            //               .passwordConfirmController
            //               .text,
            //           gender: 0));
            // }
          },
          text: 'Create Account',
        ),
      ],
    );
  }
}
