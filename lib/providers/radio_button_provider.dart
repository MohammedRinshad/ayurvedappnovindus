import 'package:flutter/material.dart';

class PaymentProvider with ChangeNotifier {
  String _selectedPayment = 'Card';

  String get selectedPayment => _selectedPayment;

  void setPayment(String payment) {
    _selectedPayment = payment;
    notifyListeners();
  }
}
