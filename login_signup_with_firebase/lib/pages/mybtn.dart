import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mybtn extends StatefulWidget {
  String title;
  final VoidCallback onButtonpress;
  Mybtn({super.key, required this.title, required this.onButtonpress});
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
              backgroundColor: WidgetStateProperty.all(Colors.yellow),
            ),
            onPressed: widget.onButtonpress,
            child: Text(widget.title)));
  }
}
