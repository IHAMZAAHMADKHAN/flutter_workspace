import 'package:flutter/material.dart';

class Cheeckboxx extends StatefulWidget {
  const Cheeckboxx({super.key});

  @override
  State<Cheeckboxx> createState() => _CheeckboxxState();
}

class _CheeckboxxState extends State<Cheeckboxx> {
  bool isChecked = false;
  bool isChecked1 = true;

  // available programming languages
List<String> languages = [
  'Dart',
  'Python',
  'Java',
  'JavaScript',
  'C++',
  'C#',
  'Ruby',
  'Go',
  'Swift',
  'Kotlin',
];


List<String> languagess = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Checkbox(
            value: isChecked,
            checkColor: Colors.amber,
            activeColor: Colors.deepOrange,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
         
        ],
      )),
    );
  }
}
