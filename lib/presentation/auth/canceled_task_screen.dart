import 'package:flutter/material.dart';

class CanceledTaskScreen extends StatefulWidget {
  const CanceledTaskScreen({super.key});

  @override
  State<CanceledTaskScreen> createState() => _CanceledTaskScreen();
}

class _CanceledTaskScreen extends State<CanceledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Task 02',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
            TextFormField(
              maxLines: 10,
              minLines: 01,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Pending'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit_note),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
