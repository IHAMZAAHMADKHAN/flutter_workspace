import 'package:flutter/material.dart';
import 'package:login_signup_with_firebase/pages/login_page.dart';
import 'package:login_signup_with_firebase/pages/mybtn.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup page'),
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
                    .createUserWithEmailAndPassword(
                        email: emailcontroller.text,
                        password: passwordcontroller.text)
                    .then((onValue) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('SignUp Seccessfully')));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                }).catchError((onError) {
                  print(onError.toString());
                });
              },
              title: 'Sign Up'),
          SizedBox(
            height: 80,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              child: Text('Already Have a account'))
        ],
      ),
    );
  }
}
