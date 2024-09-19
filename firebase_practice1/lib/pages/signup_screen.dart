import 'package:firebase_practice1/mybutton.dart';
import 'package:firebase_practice1/pages/login_screen.dart';
import 'package:firebase_practice1/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Signup'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Sign Screen",
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
            height: 40,
          ),
          Mybutton(
            title: 'Sign Up',
            onButtonpress: () {
              auth
                  .createUserWithEmailAndPassword(
                      email: emailController.text.toString(),
                      password: passwordController.text.toString())
                  .then((onValue) {
                Utils().toastMessage("Register Successfully", context);
              }).catchError((onError) {
                // ignore: avoid_print
                print(onError.toString());
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
                      builder: (context) => const LoginScreen(),
                    ));
              },
              child: const Text('Already Have acount'))
        ]));
  }
}
