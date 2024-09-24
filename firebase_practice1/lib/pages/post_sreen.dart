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
          String title = snapshot.child('title').value.toString();
          String id = snapshot.child("id").value.toString();
          snapshot.child('id').value.toString();

          return ListTile(
            title: Text(title),
            trailing: PopupMenuButton(
              icon: Icon(Icons.more_horiz),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit'),
                    onTap: () {
                      Navigator.pop(context);
                      myDialog(title, snapshot.child("id").value.toString());
                    },
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.delete_forever_outlined),
                    title: Text('Delete'),
                    onTap: () {
                      dref.child(id).remove();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> myDialog(String title, String id) async {
    final editcontroller = TextEditingController();
    editcontroller.text = title;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Update'),
          content: TextField(
            controller: editcontroller,
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () {
                dref.child(id).update({'title': editcontroller.text});
                Navigator.pop(context);
              },
              child: Text('Okay'),
            ),
            TextButton(
              onPressed: () {
                if (id.isNotEmpty) {
                  dref.child(id).update({'title': editcontroller.text});
                }
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
