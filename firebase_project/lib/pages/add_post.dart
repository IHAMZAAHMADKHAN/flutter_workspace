import 'package:firebase_project/pages/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final postController = TextEditingController();
  final ref = FirebaseDatabase.instance.ref("Post");
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: postController,
                maxLines: 4,
                decoration: const InputDecoration(
                    hintText: "Add post", border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.cyanAccent)),
                onPressed: () {
                  ref.child("1").set({
                    "title": "Hamza",
                    "id": 1,
                  }).then((onValue) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Add post successfully'),
                    ));
                  }).catchError((onError) {
                    Utils().toastMessage(onError.toString(), context);
                  });
                },
                child: const Text('Post',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
