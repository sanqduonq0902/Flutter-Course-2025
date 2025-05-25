import 'package:flutter/material.dart';
import 'package:flutter_course/data/notify.dart';
import 'package:flutter_course/views/pages/login.dart';
import 'package:flutter_course/views/pages/settings.dart';
import 'package:flutter_course/views/widget-tree.dart';
import 'package:flutter_course/widgets/hero.dart';
import 'package:lottie/lottie.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({super.key});

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lotties/home.json'),
            FittedBox(
              child: Text(
                'Flutter Map',
                style: TextStyle(
                  fontSize: 200,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 50,
                ),
              ),
            ),
            SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginWidget();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40),
              ),
              child: Text('Get started'),
              
            ),
          ],
        ),
      ),
    );
  }
}
