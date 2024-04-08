import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/add_new_task_controller.dart'; // Import the AddNewTaskController
import '../screens/bottomnavbar_screen.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  final TextEditingController _titleTextEditingController =
      TextEditingController();
  final TextEditingController _descriptionTextEditingController =
      TextEditingController();

  final AddNewTaskController addNewTaskController =
      Get.put(AddNewTaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Add new task',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: _titleTextEditingController,
                    decoration: const InputDecoration(hintText: 'Title'),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _descriptionTextEditingController,
                    maxLines: 9,
                    decoration: const InputDecoration(
                      hintText: 'Description',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GetBuilder<AddNewTaskController>(
                    builder: (addNewTaskController) {
                      return SizedBox(
                        width: double.infinity,
                        child: Visibility(
                          replacement: const Center(
                            child: CircularProgressIndicator(),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              addNewTaskController
                                  .addNewTask(
                                _titleTextEditingController.text,
                                _descriptionTextEditingController.text,
                              )
                                  .then((value) {
                                if (value) {
                                  _titleTextEditingController.clear();
                                  _descriptionTextEditingController.clear();
                                  Get.snackbar(
                                    'Success',
                                    'Task added successfully!',
                                    backgroundColor: Colors.green,
                                    colorText: Colors.white,
                                    borderRadius: 10,
                                  );
                                } else {
                                  Get.snackbar(
                                    'Failed',
                                    'Task add failed!',
                                    backgroundColor: Colors.red,
                                    colorText: Colors.white,
                                    borderRadius: 10,
                                  );
                                }
                              });
                              Get.off(const BottomNavbarScreen());
                            },
                            child: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
