import 'package:flutter/material.dart';

class DatePickControllerProvider with ChangeNotifier {
  final TextEditingController datePickController = TextEditingController();

  @override
  void dispose() {
    datePickController.dispose();
    super.dispose();
  }
}
