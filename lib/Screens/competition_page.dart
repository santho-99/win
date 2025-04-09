import 'package:flutter/material.dart';
import 'package:wingo/Screens/scr2.dart';
import 'package:wingo/Screens/screen1.dart';
import 'package:wingo/Screens/screen3.dart';

import '../constants/constant.dart';
import 'gmap.dart';

class CompetitionPage extends StatefulWidget {
  const CompetitionPage({Key? key}) : super(key: key);

  @override
  State<CompetitionPage> createState() => _CompetitionPageState();
}

class _CompetitionPageState extends State<CompetitionPage> {
  bool showContactCard = false;
  bool showEvent = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Competition'),
            actions: [
              Image.asset(
                'assets/images/appbar.png',
              )
            ],
            leading: const Icon(
              Icons.navigate_before,
              color: Colors.white,
            ),
            titleTextStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFF0E47C5),
                    Color(0xFF2A2929),
                  ])),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.network(
                  'https://marketingweek.imgix.net/content/uploads/2016/07/29160619/internet-ad.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Time:28d/40mins/20sec', style: kdateTime),
                    Text('End Date: 2025-04-10', style: kdateTime),
                  ],
                ),
                const TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blue,
                  tabs: [
                    Tab(text: "About"),
                    Tab(text: "Demo Videos"),
                    Tab(text: "Rules & Guidelines"),
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      About(),
                      DemoVideos(),
                      Screen3(),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            TextButton(
                              style: kBorderedButton,
                              onPressed: () {
                                setState(() {
                                  showContactCard = !showContactCard;
                                  showEvent = false;
                                });
                              },
                              child: const Text(
                                'Contact Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                            TextButton(
                              style: kBorderedButton,
                              onPressed: () {
                                setState(() {
                                  showEvent = !showEvent;
                                  showContactCard = false;
                                });
                              },
                              child: const Text('Upcoming Events',
                                  style: TextStyle(color: Colors.blue)),
                            ),
                            TextButton(
                              style: kBorderedButton,
                              onPressed: () {
                                setState(() {
                                  showEvent = false;
                                  showContactCard = false;
                                });
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const GMapPage();
                                  },
                                ));
                              },
                              child: const Text('Venue',
                                  style: TextStyle(color: Colors.blue)),
                            )
                          ],
                        ),
                        FilledButton(
                          onPressed: () {},
                          style: kFilledButton,
                          child: const Text('Enter Now'),
                        )
                      ],
                    ),
                    if (showContactCard)
                      Positioned(
                        left: 150,
                        height: 300,
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            width: 220,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _infoRow(
                                    Icons.email, "no-reply@wingoofame.co.uk"),
                                _infoRow(Icons.phone, "02033765250"),
                                _infoRow(Icons.language, "www.wingoo.co.uk"),
                                _infoRow(Icons.location_on, "London"),
                                _infoRow(Icons.access_time, "10.00Am - 5.00Pm"),
                                _infoRow(Icons.calendar_today, "2025-03-17"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (showEvent)
                      Positioned(
                          left: 150,
                          height: 300,
                          child: Material(
                            elevation: 6,
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(
                                    'https://img.freepik.com/premium-vector/two-persons-talk-discussion-exchange-ideas-teamwork-programmers_1014921-826.jpg?semt=ais_country_boost&w=740',
                                    height: 55,
                                    width: 55,
                                  ),
                                  _infoRow(Icons.calendar_month,
                                      'Upcoming Competition'),
                                  const Text("March 17, 2025"),
                                  _infoRow(Icons.edit_calendar, "Deadline"),
                                  const Text("April 30,2025")
                                ],
                              ),
                            ),
                          ))
                  ],
                )
              ],
            ),
          )),
    );
  }

  Widget _infoRow(IconData? icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.black54),
          const SizedBox(width: 7),
          Flexible(child: Text(text, style: TextStyle(fontSize: 12))),
        ],
      ),
    );
  }
}
