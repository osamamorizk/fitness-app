import 'package:flutter/material.dart';
import 'package:graduation_project/feature/bottom_nav_bar/presentation/views/widgets/custom_bottom_nav_bar.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: CustomBottomNavBar());
  }
}
