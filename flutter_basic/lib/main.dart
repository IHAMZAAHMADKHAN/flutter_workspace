// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/coloumn_in_flutter.dart';
import 'package:flutter_basic/pages/imagesize_increase.dart';
import 'package:flutter_basic/pages/practices_question.dart';
import 'package:flutter_basic/pages/row_and_colomn.dart';
import 'package:flutter_basic/pages/stack_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ImagesizeIncrease());
  }
}
