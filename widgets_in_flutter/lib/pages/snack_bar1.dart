import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/pages/bottom_navigation.dart';

class SnackBar1 extends StatefulWidget {
  const SnackBar1({super.key});

  @override
  State<SnackBar1> createState() => _SnackBar1State();
}

class _SnackBar1State extends State<SnackBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BottomNavigation()));
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('acoount created successfully'),
              backgroundColor: Colors.amberAccent,
              duration: Duration(seconds: 5),
            ));
          },
          child: const Text('Registered')),
    ));
  }
}
