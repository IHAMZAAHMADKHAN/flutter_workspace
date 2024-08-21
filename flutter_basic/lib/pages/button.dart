// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home_page.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextButton(
          onPressed: () {
            print("button pressed");
          },
          
          child: const Text("Click Me!"),
        ),
        ElevatedButton( 
          
            child: const Text("Click Me!"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(title: "Home"),
                ),
              );
            }),
        OutlinedButton(
            onPressed: () {
              print("outlined");
            },
            child: const Text("Outlined")),
            InkWell(child: Text("click here"),
            onLongPress:() {
              print("onLongPress");
            } ,)
      ],
    ));
  }
}
