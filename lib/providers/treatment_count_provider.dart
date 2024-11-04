import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _maleCount = 0;
  int _femaleCount=0;
  // Initialize count to 0

  int get count => _maleCount;
  int get fCount=>_femaleCount;// Getter for count

  void increment() {
    _maleCount++;
    _femaleCount++;// Increment count
    notifyListeners(); // Notify listeners to rebuild UI
  }

  void decrement() {
    if (_maleCount > 0||_femaleCount>0) {
      _maleCount--;
      _femaleCount--;// Decrement count
      notifyListeners();
    }
    // Notify listeners to rebuild UI
  }
}
