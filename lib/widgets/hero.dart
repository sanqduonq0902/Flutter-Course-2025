import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'Hero',
          child: AspectRatio(
            aspectRatio: 1920 / 1080,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/image/background.png', fit: BoxFit.cover,),
            ),
          ),
        ),
        FittedBox(
          child: Text(title, style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            letterSpacing: 50,
            color: Colors.white60
          ),),
        )
      ],
    );
  }
}
