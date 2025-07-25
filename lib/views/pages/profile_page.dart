import 'package:flutter/material.dart';
import 'package:flutter_app_practice/data/notifiers.dart';
import 'package:flutter_app_practice/views/pages/welcome_page.dart';
import 'package:flutter_app_practice/views/widget_tree.dart';
import 'package:flutter_app_practice/views/widgets/hero_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          ListTile(
            title: Text("Logout"),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
