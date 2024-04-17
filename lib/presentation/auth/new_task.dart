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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              children: [
                const Row(
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
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      title: Text('Title will be here'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('MIMO the Queeno.'),
                          Text('Date'),
                          Row(
                            children: [
                              Chip(
                                label: Text('NEW'),
                                backgroundColor: Colors.blueGrey,
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                // Expanded(
                //   child: ListView.builder(
                //     itemCount: 20,
                //     itemBuilder: (context, index) {
                //       return ListTile(
                //         title: Text('Title will be here'),
                //         subtitle: Column(
                //           children: [
                //             Text('MIMO the Queeno.'),
                //             Text('Date'),
                //             Row(
                //               children: [Chip(label: Text('NEW'))],
                //             ),
                //           ],
                //         ),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
