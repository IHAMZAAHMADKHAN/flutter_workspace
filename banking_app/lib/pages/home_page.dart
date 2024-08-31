import 'package:banking_app/ui_helper/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(
          'EasyPay',
          style: mtextstyleh3(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.notifications_active,
                color: Colors.green,
              ),
              onPressed: () {}),
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://static.vecteezy.com/system/resources/thumbnails/027/951/137/small_2x/stylish-spectacles-guy-3d-avatar-character-illustrations-png.png'),
          ),
          SizedBox(width: 16.w),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 430.w,
                height: 183.h,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Balance',
                      style: mtextstylep(color: Colors.white),
                    ),
                    Text('430,000.00',
                        style: mtextstyleh1(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          const Text('Quick Access')
        ],
      ),
    );
  }
}
