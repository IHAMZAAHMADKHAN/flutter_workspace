import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddBlog extends StatefulWidget {
  const AddBlog(
      {super.key,
      required this.showBlogs,
      required Map<String, dynamic> blogData});
  final Function showBlogs;

  @override
  State<AddBlog> createState() => _AddBlogState();
}

class _AddBlogState extends State<AddBlog> {
  final titleController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final bodyController = TextEditingController();
  final categoryController = TextEditingController();
  final sp1 = const SizedBox(height: 12);
  final sptop = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Blog'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formKey, // Assign formKey to the Form widget
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
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
            OutlinedButton(
              onPressed: () {
                bool isvalid = formKey.currentState!.validate();

                if (!isvalid) {
                  return;
                }
                _saveBlog();
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveBlog() async {
    final blogMap = {
      "title": titleController.text,
      "body": bodyController.text,
      "category": categoryController.text,
    };
    await FirebaseFirestore.instance.collection("blogs").add(blogMap);
    titleController.clear();
    bodyController.clear();
    categoryController.clear();

    // Show a success message
    const snackBar = SnackBar(
      content: Text('Blog successfully saved!'),
    );

    // Call the callback function to refresh the list of blogs.
    await widget.showBlogs();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    Navigator.pop(context); // Save the blog if the form is valid
  }
}
