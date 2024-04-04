import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dutydash/presentation/auth/delete_task_screen.dart';
import 'package:dutydash/presentation/auth/in_progress_task.dart';
import 'package:dutydash/presentation/auth/new_task.dart';
import 'package:dutydash/presentation/auth/task_done_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const NewTaskScreen(),
    const DeleteTaskScreen(),
    const InProgressScreen(),
    const TaskDoneScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        color: Colors.green,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.green,
        height: 50,
        items: const <Widget>[
          Icon(
            Icons.list_alt,
            size: 30,
            color: Colors.white,
          ),
          Icon(Icons.access_time_rounded, size: 30, color: Colors.white),
          Icon(Icons.cancel_outlined, size: 30, color: Colors.white),
          Icon(Icons.check_circle_outlined, size: 30, color: Colors.white),
        ],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
