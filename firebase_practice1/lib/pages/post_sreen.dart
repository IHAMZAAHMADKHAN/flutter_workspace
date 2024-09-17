import 'package:firebase_practice1/pages/add_post.dart';
import 'package:flutter/material.dart';

class PostSreen extends StatefulWidget {
  const PostSreen({super.key});

  @override
  State<PostSreen> createState() => _PostSreenState();
}

class _PostSreenState extends State<PostSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Screen"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPost(),
                  ));
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
