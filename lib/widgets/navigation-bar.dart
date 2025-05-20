import 'package:flutter/material.dart';
import 'package:flutter_course/data/notify.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedNotify, 
      builder: (context, selectedPage, child) {
        return NavigationBar(destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
        ],
        onDestinationSelected: (int value) {
          selectedNotify.value = value;
        },
        selectedIndex: selectedPage
        );
      }
    );
  }
}
