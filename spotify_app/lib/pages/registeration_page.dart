import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_app/pages/login_page.dart';
import 'package:spotify_app/ui_helper/util.dart';

class RegisterationPage extends StatefulWidget {
  const RegisterationPage({super.key});

  @override
  State<RegisterationPage> createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  final sp16 = SizedBox(
    height: 16.h,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: 82.h,
            ),
            const Image(
              image: AssetImage('assets/images/smalllogo.png'),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              'Register',
              style: mtextstyle(),
            ),
            SizedBox(
              height: 16.h,
            ),
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(text: 'If You Need Any Support ', style: mtextstyle12()),
              TextSpan(
                  text: 'Click Here',
                  style: mtextstyle12()
                      .copyWith(color: const Color.fromRGBO(30, 215, 96, 1))),
            ])),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              width: 348.w,
              height: 72.h,
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white, // Change this to your desired text color
                  fontSize: 16.sp, // Optional: Change the font size
                ),
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  hintStyle: mtextstyle12().copyWith(color: Colors.white60),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.r)),
                ),
              ),
            ),
            sp16,
            SizedBox(
              width: 348.w,
              height: 72.h,
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
                style: TextStyle(
                  color: Colors.white, // Change this to your desired text color
                  fontSize: 16.sp, // Optional: Change the font size
                ),
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: mtextstyle12().copyWith(color: Colors.white60),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.r)),
                ),
              ),
            ),
            sp16,
            SizedBox(
              width: 348.w,
              height: 72.h,
              child: TextFormField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  hintText: 'Password',
                  hintStyle: mtextstyle12().copyWith(color: Colors.white60),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.r)),
                ),
              ),
            ),
            sp16,
            SizedBox(
              width: 348.w,
              height: 72.h,
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                  hintText: 'Repeat Password',
                  hintStyle: mtextstyle12().copyWith(color: Colors.white60),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.r)),
                ),
              ),
            ),
            sp16,
            SizedBox(
                width: 348.w,
                height: 72.h,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      backgroundColor: WidgetStateProperty.all<Color>(
                        const Color.fromRGBO(66, 200, 60, 1),
                      ),
                    ),
                    child: Text(
                      'Register',
                      style: mtextstyle().copyWith(
                          color: Colors.black, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ))),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.w,
                  child: const Divider(
                    color: Colors.white38,
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  'or',
                  style: mtextstyle12(),
                ),
                SizedBox(
                  width: 12.w,
                ),
                SizedBox(
                  width: 150.w,
                  child: const Divider(
                    color: Colors.white38,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              width: 348.w,
              height: 48.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        border: Border.all(
                          color: Colors.white38,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.r))),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        border: Border.all(
                          color: Colors.white38,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.r))),
                    child: const Center(
                        child: Image(
                            image: AssetImage('assets/images/Googlelogo.png'))),
                  ),
                  Container(
                    width: 100.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        border: Border.all(
                          color: Colors.white38,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.r))),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.apple,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(text: "have an account?", style: mtextstyle12()),
              TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                  text: " Log In",
                  style: mtextstyle12()
                      .copyWith(color: const Color.fromRGBO(215, 189, 30, 1)))
            ])),
          ]),
        )));
  }
}
