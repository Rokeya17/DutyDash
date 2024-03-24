import 'package:dutydash/presentation/ui/create_accountscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              title: const Text(
                'Get Started with',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              leading: const BackButton(
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                labelText: 'Enter your email', // Use labelText instead of label
                suffixIcon: const Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                labelText: 'Password', // Use labelText instead of label
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 25,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Forget Password?'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Get.to(const CreateAccountScreen());
                  },
                  child: const Text('SignUp'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
