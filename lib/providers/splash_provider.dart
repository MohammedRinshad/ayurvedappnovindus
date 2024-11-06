import 'dart:async';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  SplashProvider(BuildContext context) {
    _startTimer(context);
    notifyListeners();
  }

  void _startTimer(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      // Navigate when the timer completes
      Navigator.pushReplacementNamed(context, '/loginScreen');
    });
  }
}
