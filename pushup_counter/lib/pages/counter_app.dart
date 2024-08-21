// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter $counter",
              style: TextStyle(backgroundColor: Colors.amber),
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                ),
                child: const Text("Increment"),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.amberAccent),
                child: const Text("Decrement"),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: TextButton(
                style:
                    TextButton.styleFrom(backgroundColor: Colors.amberAccent),
                child: const Text("Reset"),
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
