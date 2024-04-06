import 'package:dutydash/presentation/auth/delete_task_screen.dart';
import 'package:dutydash/presentation/auth/in_progress_task.dart';
import 'package:dutydash/presentation/auth/task_done_screen.dart';
import 'package:flutter/material.dart';

import '../auth/new_task.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    NewTaskScreen(),
    InProgressScreen(),
    DeleteTaskScreen(),
    TaskDoneScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        selectedItemColor: Colors.blueAccent,
        onTap: (int index) {
          _selectedIndex = index;

          if (mounted) {
            setState(() {});
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'New'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_rounded), label: 'In Progress'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cancel_outlined), label: 'Cancel'),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outline), label: 'Completed'),
        ],
      ),
    );
  }
}
//   Scaffold(
//   body: _screens[_selectedIndex],
//   bottomNavigationBar: CurvedNavigationBar(
//     index: _selectedIndex,
//     color: Colors.blueAccent,
//     backgroundColor: Colors.transparent,
//     buttonBackgroundColor: Colors.blueAccent,
//     items: const <Widget>[
//       Icon(
//         Icons.list_alt,
//         size: 30,
//         color: Colors.white,
//       ),
//       Icon(Icons.pending_actions_outlined, size: 30,color: Colors.),
//       Icon(Icons.delete, size: 30, color: Colors.white),
//       Icon(Icons.check_circle_outlined, size: 30, color: Colors.white),
//     ],
//     onTap: (int index) {
//       setState(() {
//         _selectedIndex = index;
//       });
//     },
//   ),
// );
