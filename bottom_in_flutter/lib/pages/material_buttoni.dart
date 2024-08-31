import 'package:bottom_in_flutter/pages/elevatedd_btn.dart';
import 'package:flutter/material.dart';

class MaterialButtoni extends StatefulWidget {
  const MaterialButtoni({super.key});

  @override
  State<MaterialButtoni> createState() => _MaterialButtoniState();
}

class _MaterialButtoniState extends State<MaterialButtoni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ElevateddBtn(),
                ));
          },
          child: Ink(
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 248, 5, 5),
                Color.fromARGB(255, 248, 248, 247)
              ]),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
                constraints: const BoxConstraints(minWidth: 88, minHeight: 20),
                alignment: Alignment.center,
                child: const Text('click Me')),
          ),
        ),
      ),
    );
  }
}
