import 'package:firebase_practice2/pages/mybtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddBlogSreen extends StatefulWidget {
  const AddBlogSreen({super.key});

  @override
  State<AddBlogSreen> createState() => _AddBlogSreenState();
}

class _AddBlogSreenState extends State<AddBlogSreen> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  final categoryController = TextEditingController();
  final sp1 = const SizedBox(height: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Blog"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Title",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Title cannot be empty";
                    }
                    return null;
                  },
                ),
                sp1,
                TextFormField(
                  controller: bodyController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Body",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Body cannot be empty";
                    }
                    return null;
                  },
                ),
                sp1,
                TextFormField(
                  controller: categoryController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Category",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Category cannot be empty";
                    }
                    return null;
                  },
                ),
                sp1,
                Mybtn(onButtonpress: () {}, title: 'Post Blog')
              ],
            ),
          )),
    );
  }
}
