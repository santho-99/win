import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:wingo/widgets/Info%20Row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Membership Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Stack(children: [
                Image.network(
                  'https://m.media-amazon.com/images/I/31Cd9UQp6eL._AC_UF1000,1000_QL80_.jpg',
                  height: 100,
                ),
                const Positioned(
                    left: 65,
                    child: Text('.',
                        style: TextStyle(fontSize: 90, color: Colors.green)))
              ]),
              Table(
                columnWidths: const {
                  0: IntrinsicColumnWidth(), // for label
                  1: FixedColumnWidth(55), // spacing before colon
                  2: FixedColumnWidth(25), // for value
                },
                children: [
                  buildRow(Icons.person, "Name", "Girija"),
                  buildRow(Icons.badge, "Member Id", "winngooo-439894"),
                  buildRow(Icons.email, "Email Id", "girija5@gmail.com"),
                  buildRow(Icons.phone, "Phone Number", "992439894"),
                  buildRow(Icons.cake, "Date of Birth", "12/02/2023"),
                  buildRow(Icons.work, "Profession", "Test"),
                  buildRow(Icons.language, "Country", "India"),
                  buildRow(Icons.calendar_today, "Created At", "01.04.2025"),
                ],
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xFFF52525),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Note : ",
                        style: TextStyle(color: Colors.white70),
                      ),
                      Text(
                          'Membership details are fixed. For Updates,\n email us info@winngofame.co.uk',
                          style: TextStyle(color: Colors.white70))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
