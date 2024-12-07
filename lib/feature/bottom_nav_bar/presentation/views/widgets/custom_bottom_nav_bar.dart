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

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

PersistentTabController controller = PersistentTabController(initialIndex: 0);

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      backgroundColor: Colors.white,
      decoration: const NavBarDecoration(
          colorBehindNavBar: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -1),
              blurRadius: 15,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 200),
          curve: Curves.linear,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: 60,
      navBarStyle: NavBarStyle.style8,
    );
  }
}

List<PersistentBottomNavBarItem> _navBarsItems() {
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
      inactiveColorPrimary: CupertinoColors.systemGrey,
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
      inactiveColorPrimary: CupertinoColors.systemGrey,
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
      inactiveColorPrimary: CupertinoColors.systemGrey,
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
      inactiveColorPrimary: CupertinoColors.systemGrey,
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
      inactiveColorPrimary: CupertinoColors.systemGrey,
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
