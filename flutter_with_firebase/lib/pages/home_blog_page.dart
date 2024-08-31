import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/pages/add_blog.dart';
import 'package:flutter_with_firebase/pages/edit_page.dart';

class HomeBlogPage extends StatefulWidget {
  const HomeBlogPage({super.key});

  @override
  State<HomeBlogPage> createState() => _HomeBlogPageState();
}

class _HomeBlogPageState extends State<HomeBlogPage> {
  List<Map<String, dynamic>> blogList = []; // Initialize blog list.

  @override
  void initState() {
    super.initState();
    _showBlogPost();
  }

  Future<void> _showBlogPost() async {
    blogList.clear();
    final snapshot = await FirebaseFirestore.instance.collection("blogs").get();
    for (final doc in snapshot.docs) {
      blogList.add({
        'id': doc.id,
        'title': doc.data()['title'],
        'body': doc.data()['body'],
        'category': doc.data()['category'],
      });
    }
    setState(() {}); // Notify the UI to update the list.
  }

  void _showDeleteConfirmationDialog(String id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Deletion"),
          content:
              const Text("Are you sure you want to delete this blog post?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop(); // Close the dialog
                await _deleteBlog(id);
                _showBlogPost(); // Refresh the blog list after deletion
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  Future<void> _deleteBlog(String id) async {
    await FirebaseFirestore.instance.collection('blogs').doc(id).delete();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Blog post deleted successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddBlog(
                    showBlogs: _showBlogPost,
                    blogData: const {},
                  ),
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: blogList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditPage(
                                blogData: blogList[
                                    index], // Pass the blog data for the specific post
                                showBlogs:
                                    _showBlogPost, // Pass the function to refresh the blog list
                              ),
                            ));
                      },
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {
                        _showDeleteConfirmationDialog(blogList[index]['id']);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
                Text(blogList[index]['title']),
                Text(blogList[index]['body']),
                Text(blogList[index]['category']),
              ],
            ),
          );
        },
      ),
    );
  }
}
