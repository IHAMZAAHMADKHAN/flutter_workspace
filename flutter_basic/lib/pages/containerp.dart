// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Containerp extends StatefulWidget {
  const Containerp({super.key});

  @override
  State<Containerp> createState() => _ContainerpState();
}

class _ContainerpState extends State<Containerp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Text('Hamza'),
          ),
        ),
      ),
    );
  }
}
