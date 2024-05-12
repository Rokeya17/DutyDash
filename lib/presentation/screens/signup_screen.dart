import 'package:dutydash/data/service/network_caller.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _passwordVisibility = false;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstnameTEController = TextEditingController();
  final TextEditingController _lastnameTEController = TextEditingController();
  final TextEditingController _phonenumberTEController =
      TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  Future<void> userSignup() async {
    final response = await NetworkCaller().postRequest('', <String, dynamic>{});
  }

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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: SafeArea(
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Join With Us",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _emailTEController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text(
                            'Email',
                            style: TextStyle(fontSize: 16),
                          )),
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return 'Enter your email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _firstnameTEController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text(
                            'First Name',
                            style: TextStyle(fontSize: 16),
                          )),
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return ' Enter your first name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _lastnameTEController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text(
                            'Last Name',
                            style: TextStyle(fontSize: 16),
                          )),
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return 'Enter your last name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _phonenumberTEController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          label: const Text(
                            'Phone Number',
                            style: TextStyle(fontSize: 16),
                          )),
                      validator: (String? value) {
                        if ((value?.isEmpty ?? true) || value!.length <= 11) {
                          return 'Enter your phone number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _passwordTEController,
                      obscureText: !_passwordVisibility,
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
                      validator: (String? value) {
                        if ((value?.isEmpty ?? true) || value!.length <= 8) {
                          return 'Enter your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            userSignup(); // Call your signup method here
                          }
                        },
                        child: const Icon(Icons.arrow_circle_right_outlined),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Have an account?"),
                        TextButton(
                          onPressed: () {
                            // Navigate to sign-in screen
                          },
                          child: const Text('Sign In'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
