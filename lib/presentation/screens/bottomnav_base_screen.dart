import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Placeholder(color: Colors.blueGrey),
    const Placeholder(color: Colors.blueGrey),
    const Placeholder(color: Colors.blueGrey),
    const Placeholder(color: Colors.blueGrey),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueGrey,
        items: const <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.lock_clock_outlined, size: 30),
          Icon(Icons.delete, size: 30),
          Icon(Icons.done_all, size: 30),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
