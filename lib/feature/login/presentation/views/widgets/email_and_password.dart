import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/app_regex.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/widgets/custom_text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isSecure = true;

  // late TextEditingController emailController;
  // late TextEditingController passwordController;
  @override
  // void initState() {
  //   // emailController = context.read<LoginCubit>().emailController;
  //   // passwordController = context.read<LoginCubit>().passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            validator: (value) {
              if (value == null) {
                return 'Please enter a valid username';
              }
            },
            // controller: emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Username',
          ),
          verticalSpace(20),
          CustomTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
            },
            // controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isSecure = !isSecure;
                  });
                },
                icon: Icon(isSecure ? Icons.visibility_off : Icons.visibility)),
            obscureText: isSecure,
            hintText: 'Password',
          ),
          verticalSpace(8),
        ],
      ),
    );
  }

  // @override
  // void dispose() {
  //   passwordController.dispose();
  //   super.dispose();
  // }
}
