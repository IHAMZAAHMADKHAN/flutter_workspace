import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 345.w,
        height: 812.h,
        child: Stack(
          children: [
            const Positioned(
              top: 259,
              left: 99,
              child: Image(image: AssetImage('assets/images/Logo.png')),
            ),
            SizedBox(
              width: 376.w,
              height: 370.h,
              child:
                  const Image(image: AssetImage("assets/images/Pattern.png")),
            ),
            Positioned(
              top: 260.h,
              left: 99.w,
              child: Text(
                'FoodNinja',
                style: GoogleFonts.viga(
                  color: const Color(0x0053e88b),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
