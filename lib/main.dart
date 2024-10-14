import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colorConstants.dart';
import 'package:quiz_app/view/discover/discover.dart';
import 'package:quiz_app/view/homescreen/homescreen.dart';
import 'package:quiz_app/view/result/result.dart';
import 'package:quiz_app/view/splash_screen/splash_screen.dart';

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
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
