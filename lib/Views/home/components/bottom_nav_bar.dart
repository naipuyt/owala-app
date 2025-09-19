import 'package:flutter/material.dart';
import 'package:owala_app/utils/consts.dart';

class BottomNavBar extends StatelessWidget {
final int selectedIndex;
final ValueChanged<int> onItemTapped;

  const BottomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "favorite"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "settings"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "person"
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      onTap: onItemTapped,
    );
  }
}