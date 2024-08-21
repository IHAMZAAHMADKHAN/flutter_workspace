import 'package:flutter/material.dart';
import 'package:list_view/pages/listview_bullder.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridView.count(
        crossAxisCount: 3,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListviewBullder(),
                    ));
              },
              child: const Text("Next")),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
          Card(child: Image.network('https://picsum.photos/200?image=25')),
        ],
      )),
    );
  }
}
