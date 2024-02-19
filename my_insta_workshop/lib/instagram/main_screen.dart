import 'package:flutter/material.dart';
import 'package:my_insta/instagram/home_screen.dart';
import 'package:my_insta/instagram/profile_screen.dart';
import 'package:my_insta/instagram/reels_screen.dart';

// This is the main screen of the Instagram app which contains the bottom navigation bar
// It allow you to navigate to the Home, Reels and Profile screens

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ReelsScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.smart_display_outlined),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: Colors.black),
        ],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        iconSize: 30,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
