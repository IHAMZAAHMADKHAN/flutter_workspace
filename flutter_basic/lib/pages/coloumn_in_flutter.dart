import 'package:flutter/material.dart';

class ColoumnInFlutter extends StatefulWidget {
  const ColoumnInFlutter({super.key});

  @override
  State<ColoumnInFlutter> createState() => _ColoumnInFlutterState();
}

class _ColoumnInFlutterState extends State<ColoumnInFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("column in flutter!"),
      ),
      body: Column(
        children: [
          const Icon(
            Icons.accessibility_rounded,
            size: 100,
          ),
          const Text("i am learning flutter!"),
          const Icon(Icons.star, size: 50),
          Container(height: 100, width: 100, color: Colors.blue),
          const SizedBox(height: 5),
          Container(height: 100, width: 100, color: Colors.blue),
          const SizedBox(height: 5),
          Container(height: 100, width: 100, color: Colors.blue),
          const SizedBox(height: 5),
          Container(height: 100, width: 100, color: Colors.blue),
        ],
      ),
    );
  }
}
