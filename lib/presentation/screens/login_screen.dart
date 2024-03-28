import 'package:dutydash/presentation/screens/create_accountscreen.dart';
import 'package:dutydash/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Get started with ',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
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
                  height: 8,
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
                      Get.to(const Homescreen());
                    },
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Forget Password?'),
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
                  setState(() {
                    Get.to(const CreateAccountScreen());
                  });
                },
                child: const Text('SignUp'),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
