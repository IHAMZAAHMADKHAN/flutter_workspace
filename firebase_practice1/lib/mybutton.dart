import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
  String title;
  final VoidCallback onButtonpress;

  Mybutton({super.key, required this.title, required this.onButtonpress});

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
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
            child: Text(widget.title)));
  }
}
