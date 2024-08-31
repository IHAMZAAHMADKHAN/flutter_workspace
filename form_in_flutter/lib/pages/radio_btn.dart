import 'package:flutter/material.dart';

enum Gender {
  male("Male"),
  female("Female"),
  others("Others");

  // Members
  final String text;
  const Gender(this.text);
}

class RadioBtn extends StatefulWidget {
  const RadioBtn({super.key});

  @override
  State<RadioBtn> createState() => _RadioBtnState();
}

class _RadioBtnState extends State<RadioBtn> {
  Gender? _selectedOption = Gender.male;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
  // Radio buttons
  children: Gender.values
      .map((option) => RadioListTile<Gender>(
            title: Text(option.text),
            value: option,
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value;
              });
            },
          ))
      .toList(),
)
    );
  }
}
