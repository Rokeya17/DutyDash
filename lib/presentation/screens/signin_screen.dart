import 'package:dutydash/presentation/screens/email_verification_screen.dart';
import 'package:dutydash/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController =
      TextEditingController();
  bool _passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Get started with ',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        labelText: 'Enter your email',
                        suffixIcon: const Icon(Icons.email_outlined),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _passwordEditingController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          labelText: 'Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordVisibility = !_passwordVisibility;
                                });
                              },
                              icon: _passwordVisibility
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off))),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const EmailVerificationScreen());
                        },
                        child: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()),
                          (route) => false);
                      setState(() {});
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
