// ignore_for_file: prefer_const_constructors, avoid_single_cascade_in_expression_statements

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_with_firebase/pages/mybtn.dart';
import 'package:login_signup_with_firebase/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              obscureText: true,
              controller: passwordcontroller,
              decoration: const InputDecoration(
                labelText: 'password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Mybtn(
              onButtonpress: () {
                auth
                    .signInWithEmailAndPassword(
                        email: emailcontroller.text,
                        password: passwordcontroller.text)
                    .then((onValue) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Login Seccessfully')));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupPage(),
                      ));
                }).catchError((onError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(onError.toString())));
                });
              },
              title: 'Login'),
          SizedBox(
            height: 80,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ));
              },
              child: Text('Create a new account'))
        ],
      ),
    );
  }
}
