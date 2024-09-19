// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_practice1/pages/add_post.dart';
import 'package:flutter/material.dart';

class PostSreen extends StatefulWidget {
  const PostSreen({super.key});

  @override
  State<PostSreen> createState() => _PostSreenState();
}

class _PostSreenState extends State<PostSreen> {
  final auth = FirebaseAuth.instance;
  DatabaseReference dref = FirebaseDatabase.instance.ref("Post");
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
      body: FirebaseAnimatedList(
        query: dref,
        itemBuilder: (context, snapshot, animation, index) {
          return ListTile(
            title: Text(snapshot.child('title').value.toString()),
            trailing: PopupMenuButton(
              icon: Icon(Icons.more_horiz),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit'),
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.delete_forever_outlined),
                    title: Text('Delete'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
