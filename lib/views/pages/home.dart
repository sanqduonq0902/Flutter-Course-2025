import 'package:flutter/material.dart';
import 'package:flutter_course/data/constant.dart';
import 'package:flutter_course/widgets/hero.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start ,
                  children: [
                    Text("Hello Layout", style: KTextStyle.titleStyle),
                    Text("Description of ", style: KTextStyle.descriptionStyle),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
