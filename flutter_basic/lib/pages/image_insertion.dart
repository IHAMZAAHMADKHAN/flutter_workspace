// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageInsertion extends StatefulWidget {
  const ImageInsertion({super.key});

  @override
  State<ImageInsertion> createState() => _ImageInsertionState();
}

class _ImageInsertionState extends State<ImageInsertion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          // color: Colors.blueAccent,
          child: Image.asset("assets/images/flutter.png"),
        ),
      ),
      
    );
  }
}
