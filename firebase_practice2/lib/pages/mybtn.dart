// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Mybtn extends StatefulWidget {
  String title;
  final VoidCallback onButtonpress;
  Mybtn({super.key, required this.onButtonpress, required this.title});

  @override
  State<Mybtn> createState() => _MybtnState();
}

class _MybtnState extends State<Mybtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 250,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.amber),
            ),
            onPressed: widget.onButtonpress,
            child: Text(
              widget.title,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )));
  }
}
