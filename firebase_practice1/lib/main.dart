import 'package:firebase_practice1/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures that all services are initialized before running the app
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyANifv2rhHIbkrpSjEmEjND2TPfQWbCSGo",
      appId: "1:336322308828:android:5caffb1d1b2aaa93b26219",
      messagingSenderId: "336322308828",
      projectId: "fir-practice1-6c4bc",
      storageBucket: "fir-practice1-6c4bc.appspot.com",
      databaseURL:
          "https://fir-practice1-6c4bc-default-rtdb.firebaseio.com/", // Your Firebase Database URL
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignupScreen(),
    );
  }
}
