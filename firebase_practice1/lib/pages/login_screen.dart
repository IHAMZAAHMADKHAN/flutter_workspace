// ignore_for_file: avoid_single_cascade_in_expression_statements

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practice1/mybutton.dart';
import 'package:firebase_practice1/pages/forgot_pass.dart';
import 'package:firebase_practice1/pages/post_sreen.dart';
import 'package:firebase_practice1/pages/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Login Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const forgotPass()));
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 15),
                  ))),
          const SizedBox(
            height: 40,
          ),
          Mybutton(
            title: 'Login',
            onButtonpress: () {
              auth.signInWithEmailAndPassword(
                  email: emailController.text.toString(),
                  password: passwordController.text.toString())
                ..then((onValue) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Log in Succesfully")));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PostSreen(),
                      ));
                }).catchError((onError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(onError.toString())));
                });
            },
          ),
          const SizedBox(
            height: 40,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ));
              },
              child: const Text('Dont Have acount'))
        ]));
  }
}
