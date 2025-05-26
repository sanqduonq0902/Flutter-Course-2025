import 'package:flutter/material.dart';
import 'package:flutter_course/views/widget-tree.dart';
import 'package:flutter_course/widgets/hero.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key, required this.title});
  final String title;
  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPw = TextEditingController();
  String confirmEmail = '123';
  String confirmPw = '456';
 

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,            
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
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  onLoginPress();
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity,40)
                ),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void onLoginPress() {
    if (confirmEmail == controllerEmail.text && confirmPw == controllerPw.text) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return WidgetTree();
      }));
    }
  }
}
