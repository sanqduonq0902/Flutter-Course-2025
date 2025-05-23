import 'package:flutter/material.dart';
import 'package:flutter_course/data/notify.dart';
import 'package:flutter_course/views/pages/home.dart';
import 'package:flutter_course/views/pages/profile.dart';
import 'package:flutter_course/views/pages/settings.dart';
import 'package:flutter_course/widgets/navigation-bar.dart';

List<Widget> pages = [HomeWidget(), ProfileWidget()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter Project App'), 
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotify.value = !isDarkModeNotify.value;
            }, 
            icon: ValueListenableBuilder(valueListenable: isDarkModeNotify, builder: (context,value,child) {
              return Icon(value ?  Icons.light_mode : Icons.dark_mode);
            })
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SettingsWidget(title: "Settings",);
              }));
            }, 
            icon: Icon(Icons.settings)
          )
        ],  
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedNotify,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
