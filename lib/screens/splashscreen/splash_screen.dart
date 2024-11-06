import 'dart:async';

import 'package:flutter/material.dart';


import '../auth/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String route = "splashScreen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            )));

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/iPhone 13 & 14 - 1.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
