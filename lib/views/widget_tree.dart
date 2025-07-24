import 'package:flutter/material.dart';
import 'package:flutter_app_practice/data/notifiers.dart';
import 'package:flutter_app_practice/views/pages/home_page.dart';
import 'package:flutter_app_practice/views/pages/profile_page.dart';
import 'package:flutter_app_practice/views/pages/setting_page.dart';
// import 'package:flutter_app_practice/views/pages/setting_page.dart';

import 'widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ansh Dholakiya"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder:
                  (BuildContext context, dynamic isDarkMode, Widget? child) {
                    return Icon(
                      isDarkMode ? Icons.light_mode : Icons.dark_mode,
                    );
                  },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                // Navigator.pushReplacement(
                //! it replace existing page so we can't go back
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage(title: "Settings");
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (BuildContext context, selectedPage, Widget? child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
