import 'package:flutter/material.dart';
import 'package:flutter_app_practice/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (BuildContext context, selectedPage, Widget? child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'user'),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },

          selectedIndex: selectedPage,
        );
      },
    );
  }
}
