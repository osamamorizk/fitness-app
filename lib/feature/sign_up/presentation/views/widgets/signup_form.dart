import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/core/widgets/custom_text_form_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isSecure = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNaumber = false;
  bool hasSpecialCharcter = false;
  bool hasMinLength = false;

  // late TextEditingController emailController;
  // late TextEditingController passwordController;
  // late TextEditingController passwordConfirController;
  // late TextEditingController phoneController;
  // late TextEditingController nameController;
  @override
  // void initState() {
  //   emailController = context.read<SignupCubit>().emailController;
  //   passwordController = context.read<SignupCubit>().passwordController;
  //   passwordConfirController =
  //       context.read<SignupCubit>().passwordConfirmController;
  //   phoneController = context.read<SignupCubit>().numberController;
  //   nameController = context.read<SignupCubit>().nameController;

  //   super.initState();
  //   setUpPassworsController();
  // }

  // void setUpPassworsController() {
  //   passwordController.addListener(
  //     () {
  //       setState(() {
  //         hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
  //         hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
  //         hasNaumber = AppRegex.hasNumber(passwordController.text);
  //         hasSpecialCharcter =
  //             AppRegex.hasSpecialCharacter(passwordController.text);
  //         hasMinLength = AppRegex.hasMinLength(passwordController.text);
  //       });
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter name';
              }
            },
            // controller: nameController,
            keyboardType: TextInputType.visiblePassword,
            hintText: 'Username',
          ),
          verticalSpace(20),
          CustomTextFormField(
            validator: (value) {
              // if (value == null ||
              //     value.isEmpty ||
              //     !AppRegex.isEmailValid(value)) {
              //   return 'Please enter a valid email';
              // }
            },
            // controller: emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email',
          ),
          verticalSpace(20),
          CustomTextFormField(
            validator: (value) {
              // if (value == null ||
              //     value.isEmpty ||
              //     !AppRegex.isPasswordValid(value)) {
              //   return 'Please enter a valid password';
              // }
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
          verticalSpace(20),
          CustomTextFormField(
            validator: (value) {
              // if (value == null ||
              //     value.isEmpty ||
              //     passwordConfirController.text != passwordController.text
              //     ) {
              //   return 'Password not match';
              // }
            },
            // controller: passwordConfirController,
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isSecure = !isSecure;
                  });
                },
                icon: Icon(isSecure ? Icons.visibility_off : Icons.visibility)),
            obscureText: isSecure,
            hintText: 'Confirm Password',
          ),
          verticalSpace(8),
          Text(
            'Note: Password must contain lower case ,upper case, special char and it\'s length is 8.',
            style: TextStyles.font14greyNormal,
          ),
          // PasswordValidations(
          //   hasLowerCase: hasLowerCase,
          //   hasUpperCase: hasUpperCase,
          //   hasNaumber: hasNaumber,
          //   hasSpecialCharcter: hasSpecialCharcter,
          //   hasMinLength: hasMinLength,
          // ),
        ],
      ),
    );
  }
}
