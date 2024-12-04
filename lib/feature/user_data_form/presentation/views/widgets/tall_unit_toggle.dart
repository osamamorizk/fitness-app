import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/feature/user_data_form/presentation/manger/cubit/user_data_cubit.dart';

class TallUniteToggle extends StatefulWidget {
  const TallUniteToggle({super.key});

  @override
  TallUniteToggleState createState() => TallUniteToggleState();
}

class TallUniteToggleState extends State<TallUniteToggle> {
  List<bool> selected = [true, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: selected,
      onPressed: (int index) {
        if (index == 0) {
          setState(() {
            BlocProvider.of<UserDataCubit>(context).heightUnit = 'CM';
          });
        } else {
          setState(() {
            BlocProvider.of<UserDataCubit>(context).heightUnit = 'FT';
          });
        }
        setState(() {
          for (int i = 0; i < selected.length; i++) {
            selected[i] = i == index;
          }
        });
      },
      borderRadius: BorderRadius.circular(5),
      selectedColor: Colors.white,
      color: ColorsManger.darkBlue,
      fillColor: ColorsManger.darkBlue,
      borderColor: ColorsManger.darkBlue,
      selectedBorderColor: ColorsManger.darkBlue,
      textStyle: const TextStyle(fontSize: 14),
      constraints: BoxConstraints(minHeight: 33.h, minWidth: 35.w),
      children: const [
        Text('CM'),
        Text('FT'),
      ],
    );
  }
}
