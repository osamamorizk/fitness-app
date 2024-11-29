import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/extensions.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Don\'t have an account?  ',
          style: TextStyles.font14BlackRegular,
        ),
        TextSpan(
          text: 'Sign Up',
          style: TextStyles.font14BlackRegular
              .copyWith(fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pushNamed(Routes.signUp);
            },
        ),
      ]),
    );
  }
}
