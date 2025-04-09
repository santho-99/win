import 'package:flutter/material.dart';
import 'package:wingo/constants/constant.dart';

import 'HomeScreen/history.dart';
import 'HomeScreen/profile.dart';
import 'HomeScreen/upload.dart';

class Mainhomepage extends StatefulWidget {
  Mainhomepage({Key? key}) : super(key: key);

  @override
  State<Mainhomepage> createState() => _MainhomepageState();
}

class _MainhomepageState extends State<Mainhomepage> {
  int _selectedIndex = 1;

  final List<Widget> _screens = [
    ProfileScreen(),
    UploadScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          backgroundColor: Colors.blue[800],
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                size: _selectedIndex == 0 ? 40 : 25,
                color: _selectedIndex == 0 ? Colors.yellow : Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.upload,
                size: _selectedIndex == 1 ? 40 : 25,
                color: _selectedIndex == 1 ? Colors.yellow : Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                size: _selectedIndex == 2 ? 40 : 25,
                color: _selectedIndex == 2 ? Colors.yellow : Colors.white,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
