import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wingo/widgets/referralRow.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Referral History',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 25.0),
        child: Column(
          children: [
            Table(
              columnWidths: const {
                0: IntrinsicColumnWidth(),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
                3: FlexColumnWidth(2),
                4: FlexColumnWidth(2),
              },
              border: const TableBorder(
                  bottom: BorderSide(),
                  top: BorderSide(),
                  left: BorderSide(),
                  right: BorderSide(),
                  verticalInside: BorderSide(),
                  horizontalInside: BorderSide(),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  )),
              children: [
                const TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('S.No'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Name'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Type'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Amount'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Status'),
                  )
                ]),
                ReferralRow('1', 'Giri', 'Member to Member', '2', 'Pending'),
                ReferralRow(
                    '2', 'Satheesh', 'Member to Member', '2', 'Approved'),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                //color: Color(0xFF2166E1),
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF2166E1),
                      Colors.blueAccent,
                      Colors.deepPurpleAccent
                    ]),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Refer a friend and earn £ 2.00",
                            style: TextStyle(color: Colors.white)),
                        const SizedBox(height: 8),
                        const Text("Referral ID :",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            )),
                        const Text("Winngooreels-799739",
                            style: TextStyle(color: Colors.white)),
                        const SizedBox(height: 12),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.black,
                          ),
                          icon: const Icon(Icons.share),
                          label: const Text("Invite"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIDfSFemHF1vxdjs0p7jclNlu0sabq9Izy0Q&s',
                    height: 80,
                    width: 100,
                  ), // Use your image here
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
