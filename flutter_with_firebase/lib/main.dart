import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/firebase_options.dart';
import 'package:flutter_with_firebase/pages/home_blog_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures Flutter is properly initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Initialize Firebase
  runApp(const MyApp()); // Run your app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 0, 0)),
          useMaterial3: true,
        ),
        home: const HomeBlogPage());
  }
}
