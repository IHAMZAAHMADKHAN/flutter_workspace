import 'package:flutter/material.dart';

class Rowp extends StatefulWidget {
  const Rowp({super.key});

  @override
  State<Rowp> createState() => _RowpState();
}

class _RowpState extends State<Rowp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Column 1'),
            SizedBox(width: 10), // Add spacing between columns
            Text('Column 2'),
            SizedBox(width: 20), // Add spacing between columns
            Text('Column 3'),
            Icon(Icons.star, color: Colors.yellow),
            Icon(
              Icons.abc_rounded,
              color: Colors.yellow,
              weight: 20.0,
            ),
            Icon(Icons.star, color: Colors.yellow),
            Icon(Icons.access_alarms, color: Color.fromARGB(255, 248, 3, 3)),
            Icon(Icons.star_border, color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
