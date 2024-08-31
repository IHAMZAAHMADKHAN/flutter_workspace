import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  final Map<String, dynamic> blogData;
  final Function showBlogs;

  const EditPage({Key? key, required this.blogData, required this.showBlogs})
      : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late TextEditingController _titleController;
  late TextEditingController _bodyController;
  late TextEditingController _categoryController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.blogData['title']);
    _bodyController = TextEditingController(text: widget.blogData['body']);
    _categoryController =
        TextEditingController(text: widget.blogData['category']);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  Future<void> _updateBlog() async {
    await FirebaseFirestore.instance
        .collection('blogs')
        .doc(widget.blogData['id'])
        .update({
      'title': _titleController.text,
      'body': _bodyController.text,
      'category': _categoryController.text,
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Blog post updated successfully')),
    );
    widget.showBlogs(); // Refresh the blog list after editing
    Navigator.of(context).pop(); // Close the edit page
  }

  void _showEditConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Edit"),
          content:
              const Text("Are you sure you want to update this blog post?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                _updateBlog(); // Update the blog post in Firebase
              },
              child: const Text("Update"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Blog Post"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _bodyController,
              decoration: const InputDecoration(labelText: 'Body'),
              maxLines: 1,
            ),
            TextField(
              controller: _categoryController,
              decoration: const InputDecoration(labelText: 'Category'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showEditConfirmationDialog,
              child: const Text('Update Blog'),
            ),
          ],
        ),
      ),
    );
  }
}
