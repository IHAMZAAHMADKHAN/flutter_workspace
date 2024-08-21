// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PracticesQuestion extends StatefulWidget {
  const PracticesQuestion({super.key});

  @override
  State<PracticesQuestion> createState() => _PracticesQuestionState();
}

class _PracticesQuestionState extends State<PracticesQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practices Question!"),
      ),
      body: Row(
        children: [
          const Center(
            child: Text(
              "Welcome to flutter.",
              style: TextStyle(
                backgroundColor: Colors.amberAccent,
                fontSize: 24,
                color: Colors.blueAccent,
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("1st button")),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(onPressed: () {}, child: Text("2nd button")),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(onPressed: () {}, child: Text("3rd button")),
        ],
      ),
    );
  }
}
