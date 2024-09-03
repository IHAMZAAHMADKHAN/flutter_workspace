import 'package:banking_app/ui_helper/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final sp1 = SizedBox(width: 30.w);
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                Text('430,000.00', style: mtextstyleh1(color: Colors.white)),
              ],
            ),
          ),
          SizedBox(height: 100.h),
          Text('Quick Access', style: mtextstyleh3()),
          SizedBox(height: 20.h),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: 334.w,
                  height: 63.h,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 61.w,
                        height: 63.h,
                        child: Column(
                          children: [
                            Image.asset('assets/images/bolt.png'),
                            Text(
                              'Electric',
                              style: mtextstyleh4(),
                            )
                          ],
                        ),
                      ),
                      sp1,
                      SizedBox(
                        width: 61.w,
                        height: 63.h,
                        child: Column(
                          children: [
                            Image.asset('assets/images/bolt.png'),
                            Text(
                              'Electric',
                              style: mtextstyleh4(),
                            )
                          ],
                        ),
                      ),
                      sp1,
                      SizedBox(
                        width: 61.w,
                        height: 63.h,
                        child: Column(
                          children: [
                            Image.asset('assets/images/bolt.png'),
                            Text(
                              'Electric',
                              style: mtextstyleh4(),
                            )
                          ],
                        ),
                      ),
                      sp1,
                      SizedBox(
                        width: 61.w,
                        height: 63.h,
                        child: Column(
                          children: [
                            Image.asset('assets/images/bolt.png'),
                            Text(
                              'Electric',
                              style: mtextstyleh4(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: SizedBox(
                  width: 334.w,
                  height: 63.h,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 61.w,
                        height: 63.h,
                        child: Column(
                          children: [
                            Image.asset('assets/images/bolt.png'),
                            Text(
                              'Electric',
                              style: mtextstyleh4(),
                            )
                          ],
                        ),
                      ),
                      sp1,
                      SizedBox(
                        width: 61.w,
                        height: 63.h,
                        child: Column(
                          children: [
                            Image.asset('assets/images/bolt.png'),
                            Text(
                              'Electric',
                              style: mtextstyleh4(),
                            )
                          ],
                        ),
                      ),
                      sp1,
                      SizedBox(
                        width: 61.w,
                        height: 63.h,
                        child: Column(
                          children: [
                            Image.asset('assets/images/bolt.png'),
                            Text(
                              'Electric',
                              style: mtextstyleh4(),
                            )
                          ],
                        ),
                      ),
                      sp1,
                      SizedBox(
                        width: 61.w,
                        height: 63.h,
                        child: Column(
                          children: [
                            Image.asset('assets/images/bolt.png'),
                            Text(
                              'Electric',
                              style: mtextstyleh4(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Container(
                width: 370.h,
                height: 172.h,
                color: Colors.amber,
                child: Column(
                  children: [
                    Container(
                      height: 30.h,
                      width: 370.w,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 30.h,
                              width: 127.w,
                              child: Text(
                                'Last Activity',
                                style: mtextstyleh4(),
                              )),
                          Spacer(),
                          SizedBox(
                              height: 21.h,
                              width: 61.w,
                              child: Text(
                                'ToDay',
                                style: mtextstyleh4(),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 56.h,
                      width: 370.w,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                  height: 21.h,
                                  width: 44.w,
                                  child: Text(
                                    'Water',
                                    style: mtextstyleh4(),
                                  )),
                              SizedBox(
                                  height: 14.h,
                                  width: 72.w,
                                  child: Text(
                                    '14 March 2024',
                                    style: mtextstyleh4(fontSize: 10),
                                  )),
                            ],
                          ),
                          Spacer(),
                          SizedBox(
                              height: 21.h,
                              width: 60.w,
                              child: Text(
                                '2,000',
                                style: mtextstyleh4(fontSize: 14.sp),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 56.h,
                      width: 370.w,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                  height: 21.h,
                                  width: 44.w,
                                  child: Text(
                                    'Water',
                                    style: mtextstyleh4(),
                                  )),
                              SizedBox(
                                  height: 14.h,
                                  width: 72.w,
                                  child: Text(
                                    '14 March 2024',
                                    style: mtextstyleh4(fontSize: 10),
                                  )),
                            ],
                          ),
                          Spacer(),
                          SizedBox(
                              height: 21.h,
                              width: 60.w,
                              child: Text(
                                '2,000',
                                style: mtextstyleh4(fontSize: 14.sp),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
