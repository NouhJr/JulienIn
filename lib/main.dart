import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Julien In',
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Container(
            child: Image.asset("assets/images/julienin.png"),
          ),
          nextScreen: Home(),
          splashTransition: SplashTransition.sizeTransition,
          backgroundColor: Colors.white),
    );
  }
}
