import 'package:flutter/material.dart';

class BottomBarApp extends StatefulWidget {
  const BottomBarApp({super.key});

  @override
  State<BottomBarApp> createState() => _BottomBarAppState();
}

class _BottomBarAppState extends State<BottomBarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 181, 63, 63),
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: ('Search')),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: ('Notifications')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: ('Profile')),
          ]),
    );
  }
}