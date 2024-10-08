import 'package:firebase_practice2/pages/home_sreen.dart';
import 'package:firebase_practice2/pages/mybtn.dart';
import 'package:firebase_practice2/pages/sign_up_sreen.dart';
import 'package:firebase_practice2/pages/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInSreen extends StatefulWidget {
  const SignInSreen({super.key});

  @override
  State<SignInSreen> createState() => _SignInSreenState();
}

class _SignInSreenState extends State<SignInSreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In Sreen"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Login into account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Email'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Password'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Mybtn(
                      onButtonpress: () {
                        auth
                            .signInWithEmailAndPassword(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString())
                            .then((onValue) {
                          Utils().toastMessage('Login Successfully', context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeSreen(),
                              ));
                        }).catchError((onError) {
                          print(onError.toString());
                        });
                      },
                      title: 'SignIn'),
                  const SizedBox(
                    height: 100,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpSreen(),
                            ));
                      },
                      child: const Text('Dont Have Account'))
                ],
              ),
            )),
      ),
    );
  }
}
