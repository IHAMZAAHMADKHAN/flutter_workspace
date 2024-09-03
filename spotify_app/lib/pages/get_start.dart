import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/pages/common_design.dart';
import 'package:spotify_app/pages/continue_page.dart';
import 'package:spotify_app/ui_helper/util.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return CommonDesign(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 592.h, left: 50.w),
          width: 344.w,
          height: 148.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Music for everyone.',
                style: mtextstyle().copyWith(
                    color: const Color.fromRGBO(30, 215, 96, 1),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                  width: 344.w,
                  height: 83.h,
                  child: Text(
                    "Nulla Lorem mollit cupidatat irure. Laborum magna nulla duis ullamco cillum dolor. Voluptate exercitation incididunt aliquip deserunt reprehenderit elit laborum. ",
                    style: mtextstyle().copyWith(
                      color: Colors.white, fontSize: 14.sp,
                      height: 1.5, // Adjust the line height
                      letterSpacing: 0.5,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 32.h,
        ),
        Container(
            width: 348.w,
            height: 72.h,
            margin: EdgeInsets.only(
              left: 40.w,
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContinuePage(
                          toggleTheme: () {},
                        ),
                      ));
                },
                style: ButtonStyle(
                  alignment: Alignment.center,
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const Color.fromRGBO(66, 200, 60, 1),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: mtextstyle().copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ))),
      ],
    ));
  }
}
