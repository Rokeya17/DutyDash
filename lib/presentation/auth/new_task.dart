import 'package:dutydash/presentation/widgets/Summary_card.dart';
import 'package:flutter/material.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: [SummaryCard(number: 01, title: 'New')],
          ),
        ],
      ),
    );
  }
}
