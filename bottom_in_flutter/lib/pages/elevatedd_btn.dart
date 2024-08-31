import 'package:bottom_in_flutter/pages/dropp_downbtn.dart';
import 'package:flutter/material.dart';

class ElevateddBtn extends StatefulWidget {
  const ElevateddBtn({super.key});

  @override
  State<ElevateddBtn> createState() => _ElevateddBtnState();
}

class _ElevateddBtnState extends State<ElevateddBtn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(elevation: WidgetStatePropertyAll(10)),
                child: const Text('click')),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DroppDownbtn(),
                    ));
              },
              mini: true,
              child: const Icon(Icons.access_alarm),
            )
          ],
        ),
      ),
    );
  }
}
