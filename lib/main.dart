import 'package:flutter/material.dart';

void main() {
  runApp(const DutyDash());
}

class DutyDash extends StatelessWidget {
  const DutyDash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager app',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
    );
  }
}
