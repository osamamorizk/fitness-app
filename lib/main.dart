import 'package:flutter/material.dart';
import 'package:graduation_project/core/routes/app_router.dart';
import 'package:graduation_project/fit_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(FitApp(appRouter: AppRouter()));
}
