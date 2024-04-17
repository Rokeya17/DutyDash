import 'package:dutydash/presentation/auth/addnewtask_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/listtitle.dart';
import '../widgets/summary_card.dart';
import '../widgets/userbanner.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const UserBannerScreen(),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
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
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const TitleList();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 04,
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        splashColor: Colors.white,
        onPressed: () {
          Get.to(const AddNewTaskScreen());
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
