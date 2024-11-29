import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/extensions.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Already have an account?  ',
          style: TextStyles.font14BlackRegular,
        ),
        TextSpan(
          text: 'Log in',
          style: TextStyles.font14BlackRegular
              .copyWith(fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pop();
            },
        ),
      ]),
    );
  }
}
