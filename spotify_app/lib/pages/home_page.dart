import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/ui_helper/util.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final sp16 = SizedBox(
    width: 16.w,
  );
  final sp48 = SizedBox(
    width: 48.w,
  );
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: SizedBox(
            height: 34.h,
            width: 34.w,
            child: const Image(image: AssetImage('assets/images/sicon.png')),
          ),
        ),
        title: const Image(image: AssetImage('assets/images/smalllogo.png')),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 32.w),
            child: SizedBox(
              height: 34.h,
              width: 34.w,
              child: const Image(image: AssetImage('assets/images/seicon.png')),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.w, top: 16.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(children: [
                SizedBox(
                  width: 364.w,
                  height: 152.h,
                ),
                Positioned(
                    top: 25.h,
                    child: Container(
                      width: 364.w,
                      height: 128.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.r)),
                        color: const Color.fromRGBO(215, 189, 30, 1),
                      ),
                    )),
                Positioned(
                  top: 32.h,
                  left: 40.w,
                  child: Text(
                    'Popular',
                    style: mtextstyle14(),
                  ),
                ),
                Positioned(
                  top: 58.h,
                  left: 40.w,
                  child: Text(
                    'Sisa Rasa',
                    style: mtextstyle(),
                  ),
                ),
                Positioned(
                  top: 100.h,
                  left: 40.w,
                  child: Text(
                    'Mahalini',
                    style: mtextstyle14(),
                  ),
                ),
                Positioned(
                    left: 192.w,
                    child: SizedBox(
                        width: 144.w,
                        height: 152.h,
                        child: const Image(
                            image: AssetImage('assets/images/girl1.png')))),
                Positioned(
                    left: 329.w,
                    top: 60.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.navigate_next,
                          color: Colors.white38,
                        ))),
                Positioned(
                    right: 329.w,
                    top: 60.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_left_outlined,
                          color: Colors.white38,
                        )))
              ]),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 195.w),
                child: Text(
                  'Today’s hits',
                  style: mtextstyle(),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 128.h,
                          width: 128.w,
                          child: const Image(
                              image: AssetImage('assets/images/p4.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Text(
                            'ArTi Untuk Cinta',
                            style: mtextstyle14(),
                          ),
                        ),
                        SizedBox(
                          width: 119.w,
                          height: 20.h,
                          child: Text(
                            'Arsy Widianto, Tiar...',
                            style: mtextstyle12(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 128.h,
                          width: 128.w,
                          child: const Image(
                              image: AssetImage('assets/images/p2.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Text(
                            'Runtuh',
                            style: mtextstyle14(),
                          ),
                        ),
                        SizedBox(
                          width: 119.w,
                          height: 20.h,
                          child: Text(
                            'Feby Putri, Fiersa B...',
                            style: mtextstyle12(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 128.h,
                          width: 128.w,
                          child: const Image(
                              image: AssetImage('assets/images/p3.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Text(
                            'Blue Jeans',
                            style: mtextstyle14(),
                          ),
                        ),
                        SizedBox(
                          width: 119.w,
                          height: 20.h,
                          child: Text(
                            '      GANGGA',
                            style: mtextstyle12(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                width: 430.w,
                height: 32.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        'Artists',
                        style: mtextstyle20(),
                      ),
                      SizedBox(
                        width: 48.w,
                      ),
                      Text(
                        'Album',
                        style: mtextstyle20().copyWith(
                          color: Colors.white54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 48.w,
                      ),
                      Text(
                        'Podcast',
                        style: mtextstyle20().copyWith(
                          color: Colors.white54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 48.w,
                      ),
                      Text(
                        'Genre',
                        style: mtextstyle20().copyWith(
                          color: Colors.white54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    width: 363.w,
                    height: 264.h,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ListTile(
                          trailing: Icon(
                            Icons.navigate_next_outlined,
                            color: Colors.white,
                          ),
                          leading: CircleAvatar(
                            radius: 40.r,
                            backgroundImage: AssetImage('assets/images/a1.png'),
                          ),
                          title: Text(
                            'Adele',
                            style: mtextstyle18(),
                          ),
                          subtitle: Text(
                            '43,877,516 monthly listeners',
                            style: mtextstyle12(),
                          ),
                        );
                      },
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
