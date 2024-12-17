import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class ProfileOptionItem extends StatelessWidget {
  const ProfileOptionItem({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
  });
  final String image;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 64.h,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: ColorsManger.lighterGrey,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: ColorsManger.lighterGrey,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              color: ColorsManger.darkBlue,
            ),
            const SizedBox(width: 16),
            Text(
              text,
              style: TextStyles.font14BlackBold,
            ),
          ],
        ),
      ),
    );
  }
}
