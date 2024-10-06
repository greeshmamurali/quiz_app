import 'package:flutter/material.dart';
import 'package:quiz_app/view/colorConstants.dart';
import 'package:quiz_app/view/homescreen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colorconstants.BG_COLOR
      ),
      home: Homescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
