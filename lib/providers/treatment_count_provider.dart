import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0; // Initialize count to 0

  int get count => _count; // Getter for count

  void increment() {
    _count++; // Increment count
    notifyListeners(); // Notify listeners to rebuild UI
  }

  void decrement() {
    if (_count > 0) {
      _count--; // Decrement count
      notifyListeners();
    }
    // Notify listeners to rebuild UI
  }
}
