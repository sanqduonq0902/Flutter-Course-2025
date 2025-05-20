import 'package:flutter/material.dart';
import 'package:flutter_course/data/notify.dart';
import 'package:flutter_course/views/widget-tree.dart';

void main() {
  runApp(const MyApp());
}

// Material App
// Scaffold
// App title
// Bottom Navigation

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModeNotify, builder: (context, value, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal, 
          brightness: value ? Brightness.dark : Brightness.light
        )),
        home: WidgetTree(),
      );
    });
  }
}
