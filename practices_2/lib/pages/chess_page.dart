import 'package:flutter/material.dart';

class ChessPage extends StatefulWidget {
  const ChessPage({super.key});

  @override
  State<ChessPage> createState() => _ChessPageState();
}

class _ChessPageState extends State<ChessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chessboard'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8, // 8 columns for the chessboard
            ),
            itemCount: 64, // 8x8 grid = 64 squares
            itemBuilder: (context, index) {
              final row = index ~/ 8; // Calculate the row number
              final column = index % 8; // Calculate the column number

              // Determine if the square is white or black
              final isWhite = (row + column) % 2 == 0;

              return Container(
                color:
                    isWhite ? Colors.white : Colors.black, // Alternating colors
              );
            },
          ),
        ),
      ),
    );
  }
}
