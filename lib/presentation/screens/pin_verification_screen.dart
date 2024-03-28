import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
  TextEditingController _pinVtextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the PIN sent to your mobile number',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            PinCodeTextField(
              appContext: context,
              controller: _pinVtextEditingController,
              length: 6,
              keyboardType: TextInputType.number,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                inactiveFillColor: Colors.grey[200]!,
                activeFillColor: Colors.white,
                selectedFillColor: Colors.white,
                inactiveColor: Colors.grey,
                activeColor: Colors.black,
                selectedColor: Colors.black,
              ),
              onChanged: (value) {},
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Verify PIN'),
            ),
          ],
        ),
      ),
    );
  }
}
