import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colorConstants.dart';
import 'package:quiz_app/utils/imageConstants.dart';
import 'package:quiz_app/view/discover/discover.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Discover(),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.BG_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.asset(Imageconstants.QUIZ,height: 200,width: 200,),
            SizedBox(height: 10,),
            CircularProgressIndicator(
              color: Colorconstants.TEXT_COLOR,
            )
          ],
        ),
      ),
    );
  }
}
