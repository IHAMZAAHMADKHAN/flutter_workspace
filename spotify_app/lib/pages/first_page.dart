import 'package:flutter/material.dart';
import 'package:spotify_app/pages/get_start.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required void Function() toggleTheme});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GetStart(),
                ));
          },
          child: const Image(
              image: AssetImage('assets/images/Spotify_Logo_RGB_Green.png')),
        ),
      ),
    );
  }
}
