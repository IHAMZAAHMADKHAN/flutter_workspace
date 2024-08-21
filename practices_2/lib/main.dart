import 'package:flutter/material.dart';
import 'package:practices_2/pages/chess_page.dart';
import 'package:practices_2/pages/list_of_50.dart';
import 'package:practices_2/pages/string10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListOf50(),
    );
  }
}
