import 'package:flutter/material.dart';

class StackIn extends StatefulWidget {
  const StackIn({super.key});

  @override
  State<StackIn> createState() => _StackInState();
}

class _StackInState extends State<StackIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack In flutter'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Top"),
              ElevatedButton(
                  onPressed: () {}, child: const Text("hello world")),
            ],
          )
        ],
      ),
    );
  }
}
