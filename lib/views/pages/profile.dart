import 'package:flutter/material.dart';
import 'package:flutter_course/views/pages/welcome.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ListTile(
            title: Text('Logout'),
            onTap: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context) {
                  return WelcomeWidget();
                })
              );
            },
          )
        ],
      ),
    );
  }
}