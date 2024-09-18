// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_practice1/mybutton.dart';
import 'package:firebase_practice1/utils.dart';
import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref("Post");
  final postcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Add Post"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: postcontroller,
                maxLines: 4,
                decoration: const InputDecoration(
                    hintText: "Add post", border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Mybutton(
              title: 'Save Post',
              onButtonpress: () {
                String id = DateTime.now().microsecondsSinceEpoch.toString();
                ref.child(id).set({
                  "title": postcontroller.text,
                  "Id": id,
                }).then((onValue) {
                  Utils().toastMessage("Post Added", context);
                }).catchError((onError) {
                  Utils().toastMessage(onError.toString(), context);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
