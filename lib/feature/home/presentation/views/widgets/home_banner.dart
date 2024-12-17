import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/app_assets.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/feature/home/presentation/views/widgets/bannner_text_button.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 186,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 180.h,
            width: MediaQuery.sizeOf(context).width.w,
            decoration: BoxDecoration(
              color: ColorsManger.darkBlue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const BannerTextButton(),
          ),
          Positioned(
            bottom: 1,
            right: -15,
            child: Image.asset(Assets.imagesManHomeBanner),
          ),
        ],
      ),
    );
  }
}
