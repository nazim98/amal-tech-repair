import 'package:flutter/material.dart';

import 'advertise_page.dart';
import 'explore_page.dart';
import 'home_page.dart';
import 'me_page.dart';
import 'settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ExplorePage(),
    AdvertisePage(),
    HomePage(),
    MePage(),
    const SettingsPage()
  ];

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.explore, size: 24), // Increase the icon size
      label: 'Explore',
      activeIcon:
          Icon(Icons.explore, size: 28, color: Colors.red), // Active icon style
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.ads_click, size: 24),
      label: 'Advertise',
      activeIcon: Icon(Icons.ads_click, size: 28, color: Colors.red),
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.chat, size: 24),
      label: 'Chat',
      activeIcon: Icon(Icons.chat, size: 28, color: Colors.red),
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person, size: 24),
      label: 'Me',
      activeIcon: Icon(Icons.person, size: 28, color: Colors.red),
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings, size: 24),
      label: 'Settings',
      activeIcon: Icon(Icons.settings, size: 28, color: Colors.red),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _bottomNavBarItems,
        selectedItemColor:
            Colors.red, // Change the color of the selected item to red
        unselectedItemColor:
            Colors.grey, // Change the color of the unselected items
        backgroundColor:
            Colors.white, // Set the background color of the navigation bar
        elevation: 10, // Add some elevation to the navigation bar
        type: BottomNavigationBarType
            .fixed, // Ensure that the labels are always visible
      ),
    );
  }
}
