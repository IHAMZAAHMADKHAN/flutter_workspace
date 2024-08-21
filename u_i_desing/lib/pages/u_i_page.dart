// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:u_i_desing/pages/welcome_page.dart';

class UIPage extends StatefulWidget {
  const UIPage({super.key});

  @override
  State<UIPage> createState() => _UIPageState();
}

class _UIPageState extends State<UIPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 137, 156, 1),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Container(
                    width: 335,
                    height: 564,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                  Positioned(
                    top: 129,
                    left: 122,
                    child: Image.asset('assets/images/logo.jpg'),
                  ),
                  const Positioned(
                    top: 240,
                    left: 90,
                    child: Text('LOGINPAGE',
                        style: TextStyle(
                          color: Color(0xFF21899C),
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2.88,
                        )),
                  ),
                  const Positioned(
                    top: 285,
                    left: 15,
                    right: 15,
                    child: Column(
                      children: [
                        TextField(
                            autofillHints: [AutofillHints.username],
                            decoration: InputDecoration(
                              labelText: 'Enter User Name',
                              border: OutlineInputBorder(),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                            autofillHints: [AutofillHints.password],
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Enter password',
                              border: OutlineInputBorder(),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 390,
                    left: 10,
                    child: Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text("Remember me",
                            style: TextStyle(
                              color: Color(0xFF0C0D34),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          width: 65,
                        ),
                        Text(
                          "Forgot password",
                          style: TextStyle(
                            color: Color.fromRGBO(33, 137, 156, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 450,
                      left: 50,
                      child: Container(
                        width: 245,
                        height: 50,
                        decoration: ShapeDecoration(
                            color: Color(0xFF21899C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            )),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WelcomePage(),
                                ));
                          },
                          child: Text("Sign in"),
                        ),
                      ))
                ]),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 22.92,
                      height: 22.92,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: FlutterLogo(),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 22.92,
                      height: 22.92,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: FlutterLogo(),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 22.92,
                      height: 22.92,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: FlutterLogo(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up here',
                        style: TextStyle(
                          color: Color(0xFFFE9879),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
