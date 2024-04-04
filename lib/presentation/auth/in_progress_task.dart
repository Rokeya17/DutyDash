import 'package:flutter/material.dart';

class InProgressScreen extends StatefulWidget {
  const InProgressScreen({super.key});

  @override
  State<InProgressScreen> createState() => _InProgressScreenState();
}

class _InProgressScreenState extends State<InProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('New'),
          TextFormField(
            minLines: 10,
            maxLines: 20,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Progress'))
        ],
      ),
    );
  }
}
