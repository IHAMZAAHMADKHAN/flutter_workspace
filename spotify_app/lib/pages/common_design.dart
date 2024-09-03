import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonDesign extends StatelessWidget {
  final Widget child;

  const CommonDesign({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 82.h),
                      width: 133.26.w,
                      height: 40.h,
                      child: Image.asset('assets/images/smalllogo.png'),
                    ),
                  ),
                  SizedBox(
                    width: 512.w,
                    height: 512.h,
                    child: Image.asset('assets/images/pc.png'),
                  ),
                ],
              ),
              Positioned(
                top: 3.h,
                child: Image.asset('assets/images/grd.png'),
              ),
              Positioned(
                top: 50.h,
                left: 130.w,
                child: Image.asset('assets/images/smalllogo.png'),
              ),
              // The child widget where specific content for the current screen will be added
              child,
            ],
          ),
        ),
      ),
    );
  }
}
