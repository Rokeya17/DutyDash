import 'package:dutydash/presentation/widgets/summary_card.dart';
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
            children: [
              Expanded(
                child: SummaryCard(number: 01, title: 'New'),
              ),
              Expanded(
                child: SummaryCard(number: 01, title: 'New'),
              ),
              Expanded(
                child: SummaryCard(number: 01, title: 'New'),
              ),
              Expanded(
                child: SummaryCard(number: 01, title: 'New'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
