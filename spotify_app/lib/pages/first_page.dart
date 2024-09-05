import 'package:flutter/material.dart';
import 'package:spotify_app/pages/get_start.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required void Function() toggleTheme});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();

    // Simulate a loading period of 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const GetStart()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image(
          image: AssetImage('assets/images/Spotify_Logo_RGB_Green.png'),
        ),
      ),
    );
  }
}
