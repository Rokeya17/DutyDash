import 'package:get/get.dart';

class AddNewTaskController extends GetxController {
  bool _adNewTaskInProgress = false;
  bool get adNewTaskInProgress => _adNewTaskInProgress;

  Future<bool> addNewTask(String title, String description) async {
    _adNewTaskInProgress = true;
    update();

    await Future.delayed(const Duration(seconds: 2));

    _adNewTaskInProgress = false;
    update();

    bool isSuccess = true;

    if (isSuccess) {
      return true;
    }
  }
}
