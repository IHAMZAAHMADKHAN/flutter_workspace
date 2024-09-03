import 'package:flutter/material.dart';
import 'package:spotify_app/pages/first_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false; // Variable to toggle between themes

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: isDarkMode ? Brightness.dark : Brightness.light,
            colorScheme: ColorScheme.fromSeed(
              seedColor: isDarkMode
                  ? const Color.fromARGB(
                      255, 18, 18, 18) // Dark theme seed color
                  : const Color.fromARGB(
                      255, 255, 255, 255), // Light theme seed color
            ),
            useMaterial3: true,
          ),
          home: FirstPage(toggleTheme: toggleTheme), // Pass the toggle function
        );
      },
    );
  }

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }
}
