import 'package:dutydash/presentation/widgets/summary_card.dart';
import 'package:flutter/material.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SummaryCard(num: 02, title: 'New'),
          Text(
            'Task 01',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Text('Date:01/02/03'),
          Chip(
            label: Text('NEW'),
          ),
        ],
      ),
    );
  }
}
