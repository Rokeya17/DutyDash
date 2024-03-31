import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
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
                'Your Email Address',
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
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailTextEditingController,
                decoration: InputDecoration(
                  label: const Text('email'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Icon(Icons.arrow_forward)),
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
