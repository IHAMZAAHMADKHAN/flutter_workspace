import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: unused_import
import 'package:spotify_app/pages/common_design.dart';
import 'package:spotify_app/pages/continue_page.dart';
import 'package:spotify_app/pages/registeration_page.dart';
import 'package:spotify_app/pages/sigh_up.dart';
import 'package:spotify_app/ui_helper/util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 82.h,
              ),
              const Image(image: AssetImage('assets/images/smalllogo.png')),
              SizedBox(
                height: 80.h,
              ),
              Text(
                'Log In',
                style: mtextstyle(),
              ),
              SizedBox(
                height: 16.h,
              ),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "If You Need Any Support ", style: mtextstyle16()),
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SighUp()));
                      },
                    text: " Click Here",
                    style: mtextstyle16()
                        .copyWith(color: const Color.fromRGBO(30, 215, 96, 1)))
              ])),
              SizedBox(
                height: 32.h,
              ),
              SizedBox(
                width: 348.w,
                height: 72.h,
                child: TextFormField(
                  style: TextStyle(
                    color:
                        Colors.white, // Change this to your desired text color
                    fontSize: 16.sp, // Optional: Change the font size
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Username Or Email",
                    hintStyle: mtextstyle12(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: 348.w,
                height: 72.h,
                child: TextFormField(
                  style: TextStyle(
                    color:
                        Colors.white, // Change this to your desired text color
                    fontSize: 16.sp, // Optional: Change the font size
                  ),
                  obscureText: _isObscure, // Change this
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: mtextstyle12(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        )),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined, // Toggle icon
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure =
                              !_isObscure; // Toggle password visibility
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 44.0),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot password?',
                      style: mtextstyle12(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  width: 348.w,
                  height: 72.h,
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
                        'Log In',
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
                              image:
                                  AssetImage('assets/images/Googlelogo.png'))),
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
                TextSpan(
                    text: "don't have an account? ", style: mtextstyle12()),
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RegisterationPage()));
                      },
                    text: "Register",
                    style: mtextstyle12()
                        .copyWith(color: const Color.fromRGBO(215, 189, 30, 1)))
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
