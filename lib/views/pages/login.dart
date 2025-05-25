import 'package:flutter/material.dart';
import 'package:flutter_course/views/pages/home.dart';
import 'package:flutter_course/views/widget-tree.dart';
import 'package:flutter_course/widgets/hero.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPw = TextEditingController();

  @override
  void initState() {
    print('init state');
    super.initState();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            HeroWidget(title: 'Hello!'),
            SizedBox(height: 20),
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerPw,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity,40)
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
