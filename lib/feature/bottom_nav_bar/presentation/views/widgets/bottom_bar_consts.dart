import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/helpers/app_assets.dart';
import 'package:graduation_project/core/themes/colors_manger.dart';
import 'package:graduation_project/feature/diet/presentation/views/diet_view.dart';
import 'package:graduation_project/feature/home/presentation/views/home_view.dart';
import 'package:graduation_project/feature/profile/presentation/views/profile_view.dart';
import 'package:graduation_project/feature/scan_food/presentation/views/scan_food_view.dart';
import 'package:graduation_project/feature/workout/presentation/views/workout_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Image.asset(
        Assets.iconsActiveHome,
        scale: .9,
      ),
      inactiveIcon: Image.asset(
        Assets.iconsInactiveHome,
      ),
      activeColorPrimary: ColorsManger.darkBlue,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(
        Assets.iconsActiveDiet,
        scale: .9,
      ),
      inactiveIcon: Image.asset(
        Assets.iconsInactiveDiet,
      ),
      activeColorPrimary: ColorsManger.darkBlue,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(
        Assets.iconsActiveScan,
        scale: .9,
      ),
      inactiveIcon: Image.asset(
        Assets.iconsInactiveScan,
      ),
      activeColorPrimary: ColorsManger.darkBlue,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(
        Assets.iconsActiveWorkout,
        scale: .9,
      ),
      inactiveIcon: Image.asset(
        Assets.iconsInactiveWorkout,
      ),
      activeColorPrimary: ColorsManger.darkBlue,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(
        Assets.iconsActiveProfile,
        scale: .9,
      ),
      inactiveIcon: Image.asset(
        Assets.iconsInactiveProfile,
      ),
      activeColorPrimary: ColorsManger.darkBlue,
    ),
  ];
}

List<Widget> buildScreens() {
  return [
    HomeView(),
    DietView(),
    ScanFoodView(),
    WorkoutView(),
    ProfileView(),
  ];
}
