import 'package:flutter/material.dart';
import 'package:wanderlustguideapp/screens/main_nav/explore/explore_screen.dart';
import 'package:wanderlustguideapp/screens/main_nav/settings/settings_screen.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _currentIndex = 0;
  final mainNavpages = [
    const ExploreScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainNavpages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(label: "Explore", icon: Icon(Icons.explore)),
          BottomNavigationBarItem(label: "Setting", icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}
