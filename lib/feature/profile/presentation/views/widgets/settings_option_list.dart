import 'package:flutter/material.dart';
import 'package:graduation_project/core/functions/show_comming_soon_dialog.dart';
import 'package:graduation_project/core/helpers/app_assets.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/feature/profile/presentation/views/widgets/profile_option_item.dart';

class SettingstOptionsList extends StatelessWidget {
  const SettingstOptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(60),
        ProfileOptionItem(
          image: Assets.iconsProfileReminderTime,
          text: 'My Reminders',
          onTap: () => showCommingSoonDialog(context),
        ),
        verticalSpace(32),
        const ProfileOptionItem(
          image: Assets.iconsProfileMyData,
          text: 'Change Password',
        ),
        verticalSpace(32),
        ProfileOptionItem(
          image: Assets.iconsProfileShare,
          text: 'Notifications',
          onTap: () => showCommingSoonDialog(context),
        ),
        verticalSpace(32),
        ProfileOptionItem(
          image: Assets.iconsProfilePeople,
          text: 'Privacy & Data',
          onTap: () => showCommingSoonDialog(context),
        ),
        verticalSpace(32),
        const ProfileOptionItem(
          image: Assets.iconsProfileLogOut,
          text: 'Clear History',
        ),
      ],
    );
  }
}
