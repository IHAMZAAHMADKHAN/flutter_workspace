import 'package:flutter/material.dart';
import 'package:form_in_flutter/pages/radio_btn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Drawer(),
        title: const Text('Easy Pay'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RadioBtn(),
                  ));
            },
            child: const Text('Next')),
      ),
    );
  }
}
