import 'package:flutter/material.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class SignupTexts extends StatelessWidget {
  const SignupTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create Account',
          style: TextStyles.font14BlackRegular,
        ),
        Text(
          'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
          style: TextStyles.font14BlackRegular,
        ),
      ],
    );
  }
}
