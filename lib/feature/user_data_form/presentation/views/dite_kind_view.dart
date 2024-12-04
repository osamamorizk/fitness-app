import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/feature/user_data_form/presentation/manger/cubit/user_data_cubit.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/widgets/custom_single_selected_item.dart';

class DiteKindView extends StatefulWidget {
  const DiteKindView({super.key});

  @override
  State<DiteKindView> createState() => _DiteKindViewState();
}

List<String> options = [
  "Balanced",
  "Mediterranean",
  "Keto",
  "Dash",
  "Low carb"
];

int? selectedIndex;

class _DiteKindViewState extends State<DiteKindView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        separatorBuilder: (context, index) => verticalSpace(24.h),
        itemCount: options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                BlocProvider.of<UserDataCubit>(context).dietKind =
                    options[index];
              });
            },
            child: CustomSingleSelectedItem(
                textAlign: TextAlign.center,
                title: options[index],
                isSelected: selectedIndex == index),
          );
        },
      ),
    );
  }
}
