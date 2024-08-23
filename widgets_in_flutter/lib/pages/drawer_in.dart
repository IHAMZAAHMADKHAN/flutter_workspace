import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/pages/drawer_of_social_app.dart';

class DrawerIn extends StatefulWidget {
  const DrawerIn({super.key});

  @override
  State<DrawerIn> createState() => _DrawerInState();
}

class _DrawerInState extends State<DrawerIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('Drawer')),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            const ListTile(
              leading: Icon(Icons.add_ic_call),
              title: Text('Call'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(title: const Text('Home'), onTap: () {}),
            ListTile(title: const Text('Categories'), onTap: () {}),
            ListTile(title: const Text('Orders'), onTap: () {}),
            ListTile(title: const Text('Wishlist'), onTap: () {}),
            ListTile(title: const Text('Settings'), onTap: () {}),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Drawer Here'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DrawerOfSocialApp()));
              },
              child: const Text('Next Page'))),
    );
  }
}
