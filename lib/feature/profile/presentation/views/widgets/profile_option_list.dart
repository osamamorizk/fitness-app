import 'package:flutter/material.dart';
import 'package:graduation_project/core/functions/show_comming_soon_dialog.dart';
import 'package:graduation_project/core/helpers/app_assets.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/feature/profile/presentation/views/widgets/profile_option_item.dart';

class ProfileOptionList extends StatelessWidget {
  const ProfileOptionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOptionItem(
          image: Assets.iconsProfileProgress,
          text: 'My Progress',
          onTap: () => showCommingSoonDialog(context),
        ),
        verticalSpace(32),
        const ProfileOptionItem(
          image: Assets.iconsProfileMyData,
          text: 'My Data',
        ),
        verticalSpace(32),
        ProfileOptionItem(
          image: Assets.iconsProfileShare,
          text: 'Share',
          onTap: () => showCommingSoonDialog(context),
        ),
        verticalSpace(32),
        const ProfileOptionItem(
          image: Assets.iconsProfilePeople,
          text: 'Contact us',
        ),
        verticalSpace(32),
        const ProfileOptionItem(
          image: Assets.iconsProfileLogOut,
          text: 'Log out',
        ),
      ],
    );
  }
}
