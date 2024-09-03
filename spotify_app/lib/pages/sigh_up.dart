import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/pages/common_design.dart';
import 'package:spotify_app/pages/login_page.dart';
import 'package:spotify_app/ui_helper/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SighUp extends StatefulWidget {
  const SighUp({super.key});

  @override
  State<SighUp> createState() => _SighUpState();
}

class _SighUpState extends State<SighUp> {
  @override
  Widget build(BuildContext context) {
    return CommonDesign(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 560.h, left: 40.w),
            width: 348.w,
            height: 48.h,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SighUp(),
                  ),
                );
              },
              style: ButtonStyle(
                alignment: Alignment.center,
                backgroundColor: WidgetStateProperty.all<Color>(
                  const Color.fromARGB(255, 40, 240, 40),
                ),
              ),
              child: Text(
                'Sign up free',
                style: mtextstyle16()
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 40.w),
            width: 348.w,
            height: 48.h,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SighUp(),
                  ),
                );
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80.r)),
                  ),
                ),
                side: WidgetStateProperty.all<BorderSide>(
                  const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255), // Border color
                    width: 2.0, // Border thickness
                  ),
                ),
                alignment: Alignment.center,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.phone_iphone_rounded, // Choose your icon here
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 24.0, // Adjust icon size if needed
                  ),
                  SizedBox(
                    width: 246.w,
                    height: 24.h,
                    child: Text(
                      'Continue with phone number',
                      style: mtextstyle16().copyWith(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 40.w),
            width: 348.w,
            height: 48.h,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SighUp(),
                  ),
                );
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80.r)),
                  ),
                ),
                side: WidgetStateProperty.all<BorderSide>(
                  const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255), // Border color
                    width: 2.0, // Border thickness
                  ),
                ),
                alignment: Alignment.center,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 29.w,
                    height: 28.h,
                    child: const Image(
                      image: AssetImage('assets/images/Googlelogo.png'),
                      // Adjust icon size if needed
                    ),
                  ),
                  SizedBox(
                    width: 246.w,
                    height: 24.h,
                    child: Text(
                      'Continue with Google',
                      style: mtextstyle16().copyWith(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 40.w),
            width: 348.w,
            height: 48.h,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SighUp(),
                  ),
                );
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80.r)),
                  ),
                ),
                side: WidgetStateProperty.all<BorderSide>(
                  const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255), // Border color
                    width: 2.0, // Border thickness
                  ),
                ),
                alignment: Alignment.center,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,

                    size: 24.0, // Adjust icon size if needed
                  ),
                  SizedBox(
                    width: 246.w,
                    height: 24.h,
                    child: Text(
                      'Continue with facebook',
                      style: mtextstyle16().copyWith(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
              child: Text(
                'Log In',
                style: mtextstyle1(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
