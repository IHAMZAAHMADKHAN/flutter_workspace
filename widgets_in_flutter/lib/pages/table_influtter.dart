import 'package:flutter/material.dart';

class TableInflutter extends StatefulWidget {
  const TableInflutter({super.key});

  @override
  State<TableInflutter> createState() => _TableInflutterState();
}

class _TableInflutterState extends State<TableInflutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(100),
          1: FixedColumnWidth(100),
        },
        children: const [
          TableRow(children: [
            Text('Name'),
            Text('Roll Number'),
            Text('Degree'),
            Text('University'),
          ]),
          TableRow(children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ]),
          TableRow(children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ]),
          TableRow(children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ]),
          TableRow(children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ]),
          TableRow(children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ]),
          TableRow(children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ]),
        ],
      ),
    );
  }
}
