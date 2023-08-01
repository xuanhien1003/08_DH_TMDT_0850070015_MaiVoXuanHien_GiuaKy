import 'package:flutter/material.dart';
import 'dart:async';
import 'package:medical/views/intro_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => IntroScreen()));
    });
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 62, 129),
      body: Center(
        child: Text(
          'MENU',
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
