// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class text_p extends StatefulWidget {
  const text_p(String s, {super.key});

  @override
  State<text_p> createState() => _text_pState();
}

class _text_pState extends State<text_p> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text(
      'A very long text that might not fit the screen. ' * 10,
      // try commenting the below line and see the difference
      //overflow: TextOverflow.ellipsis,
    )
        //  Center(
        //   child: Text(
        //     'Text Styling in flutter ',
        //     textAlign: TextAlign.center,
        //     style: const TextStyle(
        //       fontSize: 30,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.black87,
        //       decoration: TextDecoration.underline,
        //     ),
        //   ),
        // ),
        );
  }
}
