import 'package:flutter/material.dart';
import 'package:wingo/Screens/competition_page.dart';
import 'package:wingo/Screens/registerscreens/login_page.dart';
import 'package:wingo/constants/constant.dart';

import '../../widgets/popupMenuwidget.dart';
import '../competition_rules.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Video'),
        centerTitle: true,
        leading: const Text(''),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.settings),
            color: kbrandColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            onSelected: (value) {
              if (value == 'rules') {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return CompetitionRules();
                  },
                ));
              } else if (value == 'review') {
                showReviewDialog(context);
              } else if (value == 'logout') {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Logout'),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(kbrandColor)),
                            child: const Text('Cancel'),
                          ),
                          FilledButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return LoginPage();
                                },
                              ));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(kbrandColor)),
                            child: Text('Logout'),
                          ),
                        ],
                      );
                    });
              }
            },
            itemBuilder: (context) => [
              popupMenu('rules', 'Competition Rules'),
              popupMenu('review', 'Review'),
              popupMenu('logout', 'Logout'),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://cdn5.vectorstock.com/i/1000x1000/46/94/flat-video-upload-concept-vector-35684694.jpg')),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12)),
              width: double.infinity,
              child: const Column(children: [
                Text(
                  'Upload Video',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
            )),
            const SizedBox(
              height: 15,
            ),
            const Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Type',
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Type here...',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(8.0)))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Description',
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                    minLines: 3,
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: 'Type here...',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))))),
              ],
            ))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: FloatingActionButton.extended(
            backgroundColor: kbrandColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {},
            label: const Text(
              'Upload',
              style: TextStyle(color: Colors.white, fontSize: 12),
            )),
      ),
    );
  }

  void showReviewDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: const Color(0xFF9EC1F0),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Leave Your Review",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.close),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return const Icon(Icons.star_border,
                        size: 30, color: Colors.white);
                  }),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Leave Your Comment",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: "Type here...",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // handle submit
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD43B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("Submit",
                      style: TextStyle(color: Colors.black)),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
