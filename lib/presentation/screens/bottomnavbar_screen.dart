import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Page ${_selectedIndex + 1}'),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            backgroundColor: Colors.grey,
            haptic: true,
            tabBorderRadius: 20,
            tabActiveBorder: Border.all(color: Colors.black, width: 1),
            tabBorder: Border.all(color: Colors.grey, width: 1),
            tabShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
            ],
            curve: Curves.easeOutExpo,
            duration: const Duration(seconds: 3),
            gap: 8,
            color: Colors.blueAccent[800],
            activeColor: Colors.black,
            iconSize: 24,
            tabBackgroundColor: Colors.purple.withOpacity(0.1),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.lock_clock,
                text: 'InProgress',
              ),
              GButton(
                icon: Icons.checklist,
                text: 'Done',
              ),
              GButton(
                icon: Icons.delete,
                text: 'Delete',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:dutydash/presentation/auth/canceled_task_screen.dart';
// import 'package:dutydash/presentation/auth/in_progress_task.dart';
// import 'package:dutydash/presentation/auth/task_done_screen.dart';
// import 'package:flutter/material.dart';
//
// import '../auth/new_task.dart';
//
// class BottomNavbarScreen extends StatefulWidget {
//   const BottomNavbarScreen({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
// }
//
// class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
//   int _selectedIndex = 0;
//   final List<Widget> _screens = const [
//     NewTaskScreen(),
//     InProgressScreen(),
//     CanceledTaskScreen(),
//     TaskDone(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _selectedIndex,
//         unselectedItemColor: Colors.grey,
//         unselectedLabelStyle: const TextStyle(color: Colors.grey),
//         showUnselectedLabels: true,
//         selectedItemColor: Colors.blueAccent,
//         onTap: (int index) {
//           _selectedIndex = index;
//
//           if (mounted) {
//             setState(() {});
//           }
//         },
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'New'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.access_time_rounded), label: 'In Progress'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.cancel_outlined), label: 'Cancel'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.check_circle_outline), label: 'Completed'),
//         ],
//       ),
//     );
//   }
// }
// //   Scaffold(
// //   body: _screens[_selectedIndex],
// //   bottomNavigationBar: CurvedNavigationBar(
// //     index: _selectedIndex,
// //     color: Colors.blueAccent,
// //     backgroundColor: Colors.transparent,
// //     buttonBackgroundColor: Colors.blueAccent,
// //     items: const <Widget>[
// //       Icon(
// //         Icons.list_alt,
// //         size: 30,
// //         color: Colors.white,
// //       ),
// //       Icon(Icons.pending_actions_outlined, size: 30,color: Colors.),
// //       Icon(Icons.delete, size: 30, color: Colors.white),
// //       Icon(Icons.check_circle_outlined, size: 30, color: Colors.white),
// //     ],
// //     onTap: (int index) {
// //       setState(() {
// //         _selectedIndex = index;
// //       });
// //     },
// //   ),
// // );
