import 'package:dutydash/presentation/widgets/userbanner.dart';
import 'package:flutter/material.dart';

class TaskDone extends StatefulWidget {
  const TaskDone({super.key});

  @override
  State<TaskDone> createState() => _TaskDoneState();
}

class _TaskDoneState extends State<TaskDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const UserBannerScreen(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New Task',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                    Row(children: [
                      const Chip(label: Text('Completed')),
                      const Spacer(),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.edit_note)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.delete))
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
