import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/feature/login/presentation/views/login_view.dart';
import 'package:graduation_project/feature/onboarding/presentation/views/onboarding_view.dart';
import 'package:graduation_project/feature/sign_up/presentation/views/sign_up_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );

      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpView(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route founded in ${settings.name}')),
          ),
        );
    }
  }
}
