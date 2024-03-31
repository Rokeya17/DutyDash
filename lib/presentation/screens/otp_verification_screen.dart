import 'package:flutter/material.dart';

class Pinverificationscreen extends StatefulWidget {
  const Pinverificationscreen({super.key});

  @override
  State<Pinverificationscreen> createState() => _PinverificationscreenState();
}

class _PinverificationscreenState extends State<Pinverificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Enter your PIN:',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter PIN',
                  border: OutlineInputBorder(),
                ),
                maxLength: 4,
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
