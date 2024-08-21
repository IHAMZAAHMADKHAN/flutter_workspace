import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("My Home Page"),
            backgroundColor: Colors.amberAccent),
        body: Center(
          child: Container(
              width: 100,
              height: 100,
              color: const Color.fromRGBO(255, 215, 64, 1),
              child: const Center(
                child: Text(
                  'Container',
                  style: TextStyle(fontSize: 15),
                ),
              )),
        ));
  }
}
