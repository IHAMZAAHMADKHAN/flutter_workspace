import 'package:flutter/material.dart';
import 'package:widgets_in_flutter/pages/snack_bar1.dart';

class DrawerOfSocialApp extends StatefulWidget {
  const DrawerOfSocialApp({super.key});

  @override
  State<DrawerOfSocialApp> createState() => _DrawerOfSocialAppState();
}

class _DrawerOfSocialAppState extends State<DrawerOfSocialApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('User name'),
              accountEmail: Text('user email'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text('U'),
              ),
            ),
            ListTile(title: const Text('Profile'), onTap: () {}),
            ListTile(title: const Text('Friends'), onTap: () {}),
            ListTile(title: const Text('Messages'), onTap: () {}),
            ListTile(title: const Text('Settings'), onTap: () {}),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Social App'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SnackBar1()));
              },
              child: const Text('Next Page'))),
    );
  }
}
