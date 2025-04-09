import 'package:flutter/material.dart';
import 'package:wingo/constants/constant.dart';

import 'create_password.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forgot Password',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://thumbs.dreamstime.com/z/wrong-password-isolated-cartoon-vector-illustrations-confused-man-forget-laptop-access-blocked-cybersecurity-industry-262757564.jpg',
                  height: 300,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                    'Please enter your email associated with your account.'),
                const SizedBox(
                  height: 15,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'winngoo@gmail.com',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: FilledButton(
                  style: kFilledButton,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return CreatePassword();
                      },
                    ));
                  },
                  child: const Text('Send Password Reset link!')),
            ),
          ],
        ),
      ),
    );
  }
}
