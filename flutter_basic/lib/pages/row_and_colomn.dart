// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RowAndColomn extends StatefulWidget {
  const RowAndColomn({super.key});

  @override
  State<RowAndColomn> createState() => _RowAndColomnState();
}

class _RowAndColomnState extends State<RowAndColomn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Text(
            "Hamza Ahmad Khan",
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ));
  }
}
