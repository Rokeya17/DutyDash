import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'OTP Verification',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 33,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'A 6 digits PIN will sent to your email address',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Verify')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Have an account?'),
                  TextButton(onPressed: () {}, child: const Text('signIn'))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
