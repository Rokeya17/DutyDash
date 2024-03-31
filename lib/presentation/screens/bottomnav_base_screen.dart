import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list)),
          BottomNavigationBarItem(icon: Icon(Icons.list)),
          BottomNavigationBarItem(icon: Icon(Icons.list)),
          BottomNavigationBarItem(icon: Icon(Icons.list)),
        ],
      ),
    );
  }
}
