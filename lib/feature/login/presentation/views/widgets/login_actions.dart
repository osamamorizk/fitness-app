import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/extensions.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/core/widgets/custom_action_button.dart';

class LoginActions extends StatefulWidget {
  const LoginActions({
    super.key,
  });

  @override
  State<LoginActions> createState() => _LoginActionsState();
}

class _LoginActionsState extends State<LoginActions> {
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Checkbox(
                    value: remember,
                    activeColor: ColorsManger.darkBlue,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                  ),
                ),
                Text(
                  'Remember Me',
                  style: TextStyles.font14DarkBlueBold
                      .copyWith(fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Text(
              'Forgot Password?',
              style: TextStyles.font14DarkBlueBold
                  .copyWith(decoration: TextDecoration.underline),
            ),
          ],
        ),
        verticalSpace(16.h),
        CustomButton(
          onPressed: () {
            context.pushNamed(Routes.home);
            // if (context.read<LoginCubit>().formKey.currentState!.validate()) {
            //   context.read<LoginCubit>().login(
            //         email: context.read<LoginCubit>().emailController.text,
            //         password:
            //             context.read<LoginCubit>().passwordController.text,
            //       );
            // }
          },
          text: 'Login',
        ),
      ],
    );
  }
}
