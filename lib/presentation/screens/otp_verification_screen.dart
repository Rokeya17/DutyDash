import 'package:dutydash/presentation/screens/set_password_screen.dart';
import 'package:dutydash/presentation/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
              PinCodeTextField(
                keyboardType: TextInputType.number,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  inactiveColor: Colors.blue,
                  inactiveFillColor: Colors.white,
                  activeColor: Colors.grey,
                  selectedColor: Colors.white,
                  selectedFillColor: Colors.white,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.white,
                enableActiveFill: true,
                onCompleted: (v) {},
                onChanged: (value) {
                  setState(() {});
                },
                beforeTextPaste: (text) {
                  return true;
                },
                appContext: context,
              ),
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(const SetPasswordScreen());
                    },
                    child: const Text('Verify')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInScreen()),
                            (route) => false);
                      },
                      child: const Text('signIn'))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
