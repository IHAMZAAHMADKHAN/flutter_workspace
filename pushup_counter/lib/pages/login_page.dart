import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffbdc3c7),
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                counter += 1;
                setState(() {});
                // ignore: avoid_print
                print("Help");
              },
              icon: const Icon(Icons.add))
        ],
        backgroundColor: Colors.amberAccent,
      ),
      body: const Center(
        child: Text("Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 139, 18, 219),
            )),
      ),
    );
  }
}
