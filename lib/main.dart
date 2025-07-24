import 'package:flutter/material.dart';
import 'package:flutter_app_practice/data/notifiers.dart';
import 'package:flutter_app_practice/views/pages/welcome_page.dart';
import 'package:flutter_app_practice/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

/*
  * statless widet -- can't refersh screehn
  * Material app
  * scaffold

  statefull --> can refresh screen
*/

String title = "ansh hareshbhai dholakiya";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (BuildContext context, isDarkMode, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),

          // home: MyHomePage(),
          home: WelcomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return WidgetTree();
  }
}
