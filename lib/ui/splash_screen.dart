import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SvgPicture.asset(
                'assets/images/Background.svg',
                fit: BoxFit.fitHeight,
              ),
            ),
            Center(
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                height: 200,
              ),
            ),
            const Spacer(),
            const CircularProgressIndicator(
              color: Colors.black,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text('Version 1.0')
          ],
        ),
      ),
    );
  }
}
