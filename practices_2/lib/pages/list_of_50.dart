import 'package:flutter/material.dart';

class ListOf50 extends StatefulWidget {
  const ListOf50({super.key});

  @override
  State<ListOf50> createState() => _ListOf50State();
}

class _ListOf50State extends State<ListOf50> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 0; i < 50; i++)
            ListTile(
              title: Text('Item $i'),
            ),
        ],
      ),
    );
  }
}
