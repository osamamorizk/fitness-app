import 'package:flutter/material.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: ColorsManger.darkBlue, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Log in to your account',
            style: TextStyles.font14DarkBlueBold,
          ),
        ),
      ),
    );
  }
}
