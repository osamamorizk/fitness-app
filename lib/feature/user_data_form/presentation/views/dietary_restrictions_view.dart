import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/core/themes/text_styles.dart';
import 'package:graduation_project/feature/user_data_form/presentation/manger/cubit/user_data_cubit.dart';
import 'package:graduation_project/feature/user_data_form/presentation/views/widgets/custom_multi_selection.dart';

class DietaryRestrictionsView extends StatefulWidget {
  const DietaryRestrictionsView({super.key});

  @override
  State<DietaryRestrictionsView> createState() =>
      _DietaryRestrictionsViewState();
}

List<String> options = [
  "None",
  "Vegetarian",
  "Gluten-Free",
  "Dairy-Free",
  "Other health concerns"
];
final List<String> selectedDietaryRestrictions = [];

class _DietaryRestrictionsViewState extends State<DietaryRestrictionsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => verticalSpace(15.h),
              itemBuilder: (context, index) {
                final restrictions = options[index];
                final bool isRestrict =
                    selectedDietaryRestrictions.contains(restrictions);
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isRestrict) {
                          selectedDietaryRestrictions.remove(restrictions);
                          BlocProvider.of<UserDataCubit>(context)
                                  .dietaryRestrictions =
                              selectedDietaryRestrictions;
                        } else {
                          selectedDietaryRestrictions.add(restrictions);
                          BlocProvider.of<UserDataCubit>(context)
                                  .dietaryRestrictions =
                              selectedDietaryRestrictions;
                        }
                      });
                    },
                    child: CustomMultiSelectionItem(
                      isSelected: isRestrict,
                      goal: options[index],
                    ));
              },
              itemCount: options.length,
            ),
            verticalSpace(20.h),
            Text(
              'If Other, please specify',
              style: TextStyles.font14BlackBold,
            ),
            TextFormField(
              controller: BlocProvider.of<UserDataCubit>(context)
                  .otherDietaryRestrictionsController,
              enabled: selectedDietaryRestrictions
                  .contains(options[options.length - 1]),
            )
          ],
        ),
      ),
    );
  }
}
