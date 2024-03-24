import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBar(
              leading: const BackButton(),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(
                    'Enter your email ',
                  ),
                  suffixIcon: Icon(Icons.email_outlined)),
            ),
          ],
        ),
      ),
    );
  }
}
