import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dutydash/presentation/auth/add_new_task.dart';
import 'package:dutydash/presentation/auth/delete_task_screen.dart';
import 'package:dutydash/presentation/auth/in_progress_task.dart';
import 'package:dutydash/presentation/auth/task_done_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final int _selectedIndex = 0;
  final List<Widget> _screens = [
    const AddNewTaskScreen(),
    const DeleteTaskScreen(),
    const InProgressTask(),
    const DoneTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        backgroundColor: Colors.white,
        color: Colors.grey,
        items: const <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.lock_clock_outlined, size: 30),
          Icon(Icons.delete, size: 30),
          Icon(Icons.done_all, size: 30),
        ],
        onTap: (index) {
          if (mounted) {
            setState(() {});
          }
        },
      ),
    );
  }
}
