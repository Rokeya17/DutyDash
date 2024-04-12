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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'NEW Task',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 08,
              ),
              TextFormField(
                maxLines: 10,
                minLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 08,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Canceled')),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.edit_note)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
