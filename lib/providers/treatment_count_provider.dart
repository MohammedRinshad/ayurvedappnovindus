import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _maleCount = 0;
  int _femaleCount = 0;

  // Getters for each count
  int get maleCount => _maleCount;
  int get femaleCount => _femaleCount;

  // Methods to increment and decrement male count
  void incrementMale() {
    _maleCount++;
    notifyListeners(); // Notify listeners to rebuild UI
  }

  void decrementMale() {
    if (_maleCount > 0) {
      _maleCount--;
      notifyListeners();
    }
  }

  // Methods to increment and decrement female count
  void incrementFemale() {
    _femaleCount++;
    notifyListeners(); // Notify listeners to rebuild UI
  }

  void decrementFemale() {
    if (_femaleCount > 0) {
      _femaleCount--;
      notifyListeners();
    }
  }
}
