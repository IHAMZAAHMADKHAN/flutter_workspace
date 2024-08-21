import 'package:figma_loginpage/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (context, child) {
          return MaterialApp(
            title: 'Login Page',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme: GoogleFonts.nunitoTextTheme(
                  Theme.of(context).textTheme,
                )),
            home: const LoginPage(
              title: 'LogIn Page!',
            ),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

