import 'package:dutydash/presentation/screens/pin_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DutyDash extends StatelessWidget {
  const DutyDash({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Duty Dash',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      home: const PinVerificationScreen(),
    );
  }
}
