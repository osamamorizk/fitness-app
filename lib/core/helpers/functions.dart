import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/core/themes/text_styles.dart';

AppBar customDataFormBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        size: 22,
        Icons.arrow_back,
        color: ColorsManger.darkBlue,
      ),
    ),
    title: Expanded(
      child: LinearProgressIndicator(
        minHeight: 4,
        borderRadius: BorderRadius.circular(2),
        value: 1 / 5,
        backgroundColor: Colors.grey[300],
        color: ColorsManger.darkBlue,
      ),
    ),
    actions: [
      SizedBox(
        width: 56.w,
        child: TextButton(
          child: Text(
            'Skip',
            style: TextStyles.font14BlackRegular,
          ),
          onPressed: () {},
        ),
      )
    ],
  );
}
