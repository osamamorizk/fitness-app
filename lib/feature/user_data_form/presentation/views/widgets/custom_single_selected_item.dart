import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

class CustomSingleSelectedItem extends StatelessWidget {
  const CustomSingleSelectedItem({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.isSelected,
  });
  final String title;
  final String image;
  final String subtitle;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
          color: !isSelected ? Colors.white : ColorsManger.lighterBlue,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: .5,
              color:
                  !isSelected ? Colors.grey.shade300 : ColorsManger.darkBlue)),
      child: ListTile(
        minTileHeight: 60,
        leading: Image.asset(image),
        title: Text(
          title,
          style: TextStyles.font14BlackBold,
        ),
        subtitle: Text(
          subtitle,
          style: TextStyles.font14greyNormal.copyWith(fontSize: 12),
        ),
      ),
    );
  }
}
