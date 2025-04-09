import 'package:flutter/material.dart';
import 'package:wingo/Screens/registerscreens/login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text(
              'Personal Information',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1),
            ),
            RegistrationTextField('First Name', 'Wingoo'),
            RegistrationTextField('Last Name', 'Consultancy'),
            RegistrationTextField('Date of Birth', 'MM/DD/YY'),
            RegistrationTextField('Phone Number', '9876543210'),
            RegistrationTextField('Residential City', 'Chennai'),
            RegistrationTextField('Proffession', 'Manager'),
            FilledButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ));
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue)),
                child: const Text('Next'))
          ],
        ),
      ),
    );
  }

  Widget RegistrationTextField(String fieldName, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName),
        const SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
