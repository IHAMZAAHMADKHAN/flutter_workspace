import 'package:flutter/material.dart';

class String10 extends StatefulWidget {
  const String10({super.key});

  @override
  State<String10> createState() => _String10State();
}

class _String10State extends State<String10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('hamza $index'),
              );
            }));
  }
}
