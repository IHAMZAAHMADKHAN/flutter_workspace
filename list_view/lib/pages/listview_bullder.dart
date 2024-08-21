import 'package:flutter/material.dart';

class ListviewBullder extends StatefulWidget {
  const ListviewBullder({super.key});

  @override
  State<ListviewBullder> createState() => _ListviewBullderState();
}

class _ListviewBullderState extends State<ListviewBullder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3), // Number of columns
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: index % 2 == 0 ? const Text('X') : const Text('O'),
            ),
          );
        },
      )),
    );
  }
}
