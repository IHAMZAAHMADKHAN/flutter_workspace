import 'package:firebase_practice2/pages/add_blog_sreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddBlogSreen(),
                  ));
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
