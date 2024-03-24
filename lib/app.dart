import 'package:dutydash/presentation/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class DutyDash extends StatelessWidget {
  const DutyDash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager app',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
    );
  }
}
