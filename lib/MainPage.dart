import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Screen/Dashboard.dart';
import 'Screen/Development.dart';
import 'Screen/Materi.dart';

// ignore: must_be_immutable

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> screens = [Dashboard(), MateriPage(), Development()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('Image/BackgroundLogin.jpg')),
        ),
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(143, 148, 251, 1),
            boxShadow: [BoxShadow(blurRadius: 20, color: Colors.white)]),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: GNav(
            rippleColor: Colors.white,
            hoverColor: Colors.white,
            gap: 8,
            activeColor: Colors.lightBlueAccent,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            tabs: [
              GButton(
                icon: Icons.dashboard,
                text: 'Materi',
              ),
              GButton(
                icon: Icons.book,
                text: 'Latihan',
              ),
              GButton(
                icon: Icons.badge,
                text: 'Pengembang',
              ),
            ],
            tabBackgroundColor: Colors.white,
            color: Colors.white,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        )),
      ),
    );
  }
}
