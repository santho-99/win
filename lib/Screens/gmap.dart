import 'package:flutter/material.dart';

class GMapPage extends StatelessWidget {
  const GMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://storage.googleapis.com/support-forums-api/attachment/thread-7805975-3689156219126864769.png'))),
      ),
    );
  }
}
