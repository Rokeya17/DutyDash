import 'package:flutter/material.dart';

import '../widgets/summary_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SummaryCard(
                      title: 'New',
                      num: 01,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Progress',
                      num: 02,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'Completed',
                      num: 03,
                    ),
                  ),
                  Expanded(
                    child: SummaryCard(
                      title: 'canceled',
                      num: 04,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
