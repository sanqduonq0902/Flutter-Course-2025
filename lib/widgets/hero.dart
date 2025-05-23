import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'Hero',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/image/background.png', color: Colors.teal, colorBlendMode: BlendMode.modulate),
      ),
    );
  }
}