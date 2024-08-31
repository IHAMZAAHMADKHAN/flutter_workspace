import 'package:banking_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: 370.w,
                height: 599.h,
                margin: EdgeInsets.only(left: 30.w, top: 50.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 370.w,
                      height: 42.h,
                      child: Text(
                        'Sign up now to get started on your journey towards financial freedom.',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                        width: 94.w,
                        height: 21.h,
                        child: Text(
                          'Username',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: 370.w,
                      height: 38.h,
                      child: const TextField(
                        autofillHints: [AutofillHints.name],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                        width: 94.w,
                        height: 21.h,
                        child: Text(
                          'Email',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: 370.w,
                      height: 38.h,
                      child: const TextField(
                        autofillHints: [AutofillHints.email],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                        width: 94.w,
                        height: 21.h,
                        child: Text(
                          'Phone Number',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      width: 370.w,
                      height: 38.h,
                      child: const TextField(
                        autofillHints: [AutofillHints.telephoneNumber],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                        width: 94.w,
                        height: 21.h,
                        child: Text(
                          'Password',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    SizedBox(
                      width: 370.w,
                      height: 38.h,
                      child: TextField(
                        obscureText: true,
                        autofillHints: const [AutofillHints.password],
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility_off)),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: SizedBox(
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
                            child: Text('Sign up',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color.fromARGB(255, 253, 253, 253),
                                ))),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: SizedBox(
                        width: 380.w,
                        height: 60.h,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 50.h,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 252, 252, 252),
                                  ),
                                  onPressed: () {},
                                  child: Text('Sign In With Google',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 47, 179, 7),
                                      ))),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            SizedBox(
                              height: 50.h,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 252, 252, 252),
                                  ),
                                  onPressed: () {},
                                  child: Text('Sign In With Apple',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 47, 179, 7),
                                      ))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 180.h,
              ),
              Center(
                child: SizedBox(
                  width: 253.w,
                  height: 19.h,
                  child: const Text('Already have on account? Sign In'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
