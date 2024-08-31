import 'package:banking_app/pages/home_page.dart';
import 'package:banking_app/pages/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: 50.h, left: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign In',
                  style: GoogleFonts.poppins(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Row(
                  children: [
                    Text(
                        'Enter your credentials below to access your account '),
                  ],
                ),
                const Row(
                  children: [Text('and take control of your finances')],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text('Email/Username',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 370.w,
                  height: 60.h,
                  child: const TextField(
                    autofillHints: [AutofillHints.email],
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text('Password',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 370.w,
                  height: 38.h,
                  child: TextField(
                    autofillHints: const [AutofillHints.password],
                    obscureText: true,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility_off))),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 370.w,
                  height: 58.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Colors.green,
                      ),
                      Text('Remember Me',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          )),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Mainscreen(),
                              ));
                        },
                        child: Text('Forgot Password?',
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  width: 370.w,
                  height: 50.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                      },
                      child: Text('Sign In',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 253, 253, 253),
                          ))),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: SizedBox(
                    width: 370.w,
                    height: 50.h,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 50.h,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              onPressed: () {},
                              child: Text('Sign In With Google',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 253, 253, 253),
                                  ))),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        SizedBox(
                          height: 50.h,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              onPressed: () {},
                              child: Text('Sign In With Apple',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 253, 253, 253),
                                  ))),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 250.h,
                ),
                Center(
                  child: Text('Don’t have on account? Sign Up',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
