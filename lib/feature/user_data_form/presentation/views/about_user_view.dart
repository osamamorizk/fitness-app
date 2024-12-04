import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/core/widgets/custom_action_button.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/widgets/gender_toggle_buttons.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/widgets/tall_unit_toggle.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/widgets/wieght_unite_toggle.dart';

class AboutUser extends StatelessWidget {
  const AboutUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(35.h),
              Text(
                'First, tell us a little about yourself',
                style: TextStyles.font18BlackBold,
              ),
              verticalSpace(40.h),
              Text(
                'Your Gender',
                style: TextStyles.font14BlackBold,
              ),
              verticalSpace(16.h),
              const Center(child: GenderToggleButtons()),
              verticalSpace(30.h),
              Text(
                'How old are you?',
                style: TextStyles.font14BlackBold,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 250.w,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                      )),
                  Text(
                    'years',
                    style: TextStyles.font14BlackRegular,
                  ),
                ],
              ),
              verticalSpace(30.h),
              Text(
                'How tall are you?',
                style: TextStyles.font14BlackBold,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 250.w,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const TallUniteToggle(),
                ],
              ),
              verticalSpace(30.h),
              Text(
                'What is your current weight?',
                style: TextStyles.font14BlackBold,
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 250.w,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                      )),
                  const WieghtUniteToggle(),
                ],
              ),
              verticalSpace(130),
              CustomButton(
                text: 'Continue',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
