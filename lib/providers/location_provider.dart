import 'package:flutter/material.dart';

class DropdownProvider with ChangeNotifier {
  String? _selectedBranch;
  String? _selectedLocation;
  String? _selectedAge;
  String? _selectedHour;
  String? _selectedMinute;

  String? get selectedBranch => _selectedBranch;
  String? get selectedLocation => _selectedLocation;
  String? get selectedAge => _selectedAge;
  String? get selectedHour => _selectedHour;
  String? get selectedMinute=>_selectedMinute;

  void setBranch(String branch) {
    _selectedBranch = branch;
    notifyListeners();
  }

  void setLocation(String location) {
    _selectedLocation = location;
    notifyListeners();
  }

  void setAge(String age) {
    _selectedAge = age;
    notifyListeners();
  }
  void setHour(String hour) {
    _selectedHour = hour;
    notifyListeners();
  }
   void setMinute(String minute) {
  _selectedMinute = minute;
    notifyListeners();
  }
}
