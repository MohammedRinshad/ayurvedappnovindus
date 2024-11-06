import 'package:flutter/material.dart';

class FormProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController whatsController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController branchController = TextEditingController();

  void updateName(String value) {
    nameController.text = value;
    notifyListeners();
  }

  void updateWhatsApp(String value) {
    whatsController.text = value;
    notifyListeners();
  }

  void updateAddress(String value) {
    addressController.text = value;
    notifyListeners();
  }

  void updateLocation(String value) {
    locationController.text = value;
    notifyListeners();
  }

  void updateBranch(String value) {
    branchController.text = value;
    notifyListeners();
  }

  @override
  void dispose() {
    nameController.dispose();
    whatsController.dispose();
    addressController.dispose();
    locationController.dispose();
    branchController.dispose();
    super.dispose();
  }
}
