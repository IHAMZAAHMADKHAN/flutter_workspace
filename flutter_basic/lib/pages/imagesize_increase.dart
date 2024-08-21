import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/text_p.dart';

class ImagesizeIncrease extends StatefulWidget {
  const ImagesizeIncrease({super.key});

  @override
  State<ImagesizeIncrease> createState() => _ImagesizeIncreaseState();
}

class _ImagesizeIncreaseState extends State<ImagesizeIncrease> {
  double imageSize = 100;
  void _increaseImageSize() {
    setState(() {
      imageSize *= 2;
    });
  }

  void _decreaseImageSize() {
    setState(() {
      imageSize /= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image size double"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/brid.png',
            width: imageSize,
            height: imageSize,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                _increaseImageSize();
              },
              child: const Text("Increase Size")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                _decreaseImageSize();
              },
              child: const Text('Decrease Size')),
        ]),
      ),
    );
  }
}
