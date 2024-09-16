import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AddBlog extends StatefulWidget {
  AddBlog({super.key});

  @override
  State<AddBlog> createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  final categoryController = TextEditingController();
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref("post");

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed.
    titleController.dispose();
    bodyController.dispose();
    categoryController.dispose();
    super.dispose();
  }

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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(labelText: "Title"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: bodyController,
                decoration: const InputDecoration(labelText: "Body"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter body content';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: categoryController,
                decoration: const InputDecoration(labelText: "Category"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a category';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 40),
              OutlinedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    String id =
                        DateTime.now().millisecondsSinceEpoch.toString();
                    ref.child(id).set({
                      "title": titleController.text,
                      "body": bodyController.text,
                      "category": categoryController.text,
                    }).then((value) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Blog post added successfully")),
                      );
                      // Clear fields after saving
                      titleController.clear();
                      bodyController.clear();
                      categoryController.clear();
                    }).catchError((error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Failed to add post: $error")),
                      );
                    });
                  }
                },
                child: const Text("Save"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
