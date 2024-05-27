import 'package:elective_app/home.dart';
import 'package:elective_app/news.dart';
import 'package:elective_app/profile.dart';
import 'package:elective_app/settings.dart';
import 'package:flutter/material.dart';

import 'notice.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;
  var pages = [
    HomePage(),
    NewsPage(),
    NoticePage(),
    SettingsPage(),
    ProfilePage()
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super Store'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Stack(
              children: [
                Image.asset(
                  'assets/images/header_img.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            )),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home_filled),
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Terms and Conditions'),
              trailing: Icon(Icons.shield_outlined),
            ),
            ListTile(
              leading: Icon(Icons.r_mobiledata),
              title: Text('Rate App'),
              trailing: Icon(Icons.r_mobiledata_outlined),
            ),
            ListTile(
              title: Text('Share App'),
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
            backgroundColor: selectedIndex == 0 ? Colors.red : Colors.white38,
          ),
          BottomNavigationBarItem(
            label: 'News',
            icon: Icon(Icons.home),
            backgroundColor: selectedIndex == 0 ? Colors.red : Colors.white38,
          ),
          BottomNavigationBarItem(
            label: 'Notice',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
