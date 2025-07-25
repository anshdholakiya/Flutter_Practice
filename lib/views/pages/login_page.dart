import 'package:flutter/material.dart';
import 'package:flutter_app_practice/views/widgets/hero_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [HeroWidget()]),
      ),
    );
  }
}
