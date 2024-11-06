import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/screens/home/home_screen.dart';

class LoginProvider extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Method to handle login logic
  void login(BuildContext context) {
    final email = emailController.text;
    final password = passwordController.text;

    Navigator.pushNamed(context,HomeScreen.route);
  }

  // Dispose controllers when no longer needed
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
