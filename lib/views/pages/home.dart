import 'package:flutter/material.dart';
import 'package:flutter_course/widgets/hero.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          HeroWidget()
        ],
      ),
    );
  }
}