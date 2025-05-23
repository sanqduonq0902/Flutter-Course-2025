import 'package:flutter/material.dart';
import 'package:flutter_course/data/notify.dart';
import 'package:flutter_course/views/pages/settings.dart';
import 'package:flutter_course/views/widget-tree.dart';
import 'package:flutter_course/widgets/hero.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(),
            FilledButton(
              onPressed: () {
                selectedNotify.value = 0;
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return WidgetTree();
                }));
              }, 
              child: Text('Login')
            ),
          ],
        ),
      ),
    );
  }
}
