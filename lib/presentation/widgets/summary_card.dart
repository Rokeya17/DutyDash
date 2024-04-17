import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final int num;
  final String title;

  const SummaryCard({super.key, required this.title, required this.num});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            '$num',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
