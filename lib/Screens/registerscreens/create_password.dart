import 'package:flutter/material.dart';
import 'package:wingo/Screens/registerscreens/login_page.dart';
import 'package:wingo/widgets/reg_field.dart';

import '../../constants/constant.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Password',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
              'https://static.vecteezy.com/system/resources/thumbnails/006/409/481/small/people-thinking-to-make-decision-problem-solving-and-find-creative-ideas-with-question-mark-in-flat-cartoon-background-for-poster-illustration-vector.jpg',
              width: double.infinity,
            ),
            RegistrationTextField(
                'Email or Phone Number', 'Winngooconsultancy29@gmail.com'),
            RegistrationTextField('Password', '************'),
            RegistrationTextField('Confirm Password', '************'),
            FilledButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ));
              },
              child: const Text('Create'),
              style: kFilledButton,
            )
          ],
        ),
      ),
    );
  }
}
