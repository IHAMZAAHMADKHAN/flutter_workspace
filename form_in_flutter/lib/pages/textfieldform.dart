import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_in_flutter/pages/cheeckboxx.dart';

class Textfieldform extends StatefulWidget {
  const Textfieldform({super.key});

  @override
  State<Textfieldform> createState() => _TextfieldformState();
}

class _TextfieldformState extends State<Textfieldform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: "User Feedback",
                  suffixIcon: const Icon(Icons.feedback),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              validator: (value) {
                if (value == '' || value!.isEmpty) {
                  return 'please Enter feedback';
                }
                return null;
              },
              inputFormatters: [
                FilteringTextInputFormatter.singleLineFormatter
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Cheeckboxx(),
                    ));
              },
              child: const Text('submit'),
            )
          ],
        ),
      ),
    );
  }
}
