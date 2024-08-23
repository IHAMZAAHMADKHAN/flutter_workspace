import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/pages/bottom_bar_app.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // ignore: non_constant_identifier_names
  int set_index = 0;
  void itemtap(int index0) {
    setState(() {
      set_index = index0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_comment_sharp), label: "Insert comment"),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_comment_sharp), label: "Insert comment"),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_comment_sharp),
            label: "Insert comment",
          ),
        ],
        currentIndex: set_index,
        onTap: itemtap,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomBarApp(),
                  ));
            },
            child: const Text('Next')),
      ),
    );
  }
}
