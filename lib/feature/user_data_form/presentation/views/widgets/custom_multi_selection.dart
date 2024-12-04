import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';

class CustomMultiSelectionItem extends StatelessWidget {
  const CustomMultiSelectionItem({
    super.key,
    required this.isSelected,
    required this.goal,
    this.image,
  });

  final bool isSelected;
  final String goal;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? ColorsManger.lighterBlue : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: .5,
          color: isSelected ? ColorsManger.darkBlue : Colors.grey.shade300,
        ),
      ),
      child: ListTile(
        minTileHeight: 55.h,
        leading: image,
        title: Text(
          goal,
          style: TextStyle(
              color: Colors.black,
              fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal),
        ),
        trailing: Icon(
          isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
          color: ColorsManger.darkBlue,
        ),
      ),
    );
  }
}
