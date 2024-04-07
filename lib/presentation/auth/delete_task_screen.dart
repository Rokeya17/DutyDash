import 'package:flutter/material.dart';

class DeleteTaskScreen extends StatefulWidget {
  const DeleteTaskScreen({super.key});

  @override
  State<DeleteTaskScreen> createState() => _DeleteTaskScreenState();
}

class _DeleteTaskScreenState extends State<DeleteTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
    );
  }
}
