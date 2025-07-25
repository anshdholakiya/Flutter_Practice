import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: "hero1",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/ansh.png',
              // color: Colors.teal,
              // colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
      ],
    );
  }
}
