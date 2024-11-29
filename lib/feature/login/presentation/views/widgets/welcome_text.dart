import 'package:flutter/material.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: TextStyles.font28DarkBlueBold,
        ),
        const SizedBox(height: 16),
        Text(
          'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
          style: TextStyles.font14greyNormal,
        ),
      ],
    );
  }
}
