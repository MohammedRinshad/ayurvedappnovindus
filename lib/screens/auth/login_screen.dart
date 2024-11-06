import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:novinduscalicutinterview/utils/styles.dart';
import 'package:novinduscalicutinterview/widgets/login_button_widget.dart';
import 'package:novinduscalicutinterview/widgets/text_form_field.dart';

import '../../providers/login_provider.dart';

class LoginScreen extends StatelessWidget {
  static const String route = "loginScreen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("assets/logo_make_11_06_2023_115 1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: MediaQuery.of(context).size.width / 2.8,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Layer_1-2.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login Or Register To Book\nYour Appointments",
                    style: ts22mcBlack,
                  ),
                  const SizedBox(height: 20),
                  Text("Email", style: ts16mcBlack),
                  const SizedBox(height: 5),
                  Consumer<LoginProvider>(builder: (context, email, _) {
                    return TextFormFieldWidget(
                      controller: email.emailController,
                      hintText: "Enter your email",
                      width: MediaQuery.of(context).size.width * (350 / 375),
                      height: MediaQuery.of(context).size.height * (50 / 800),
                    );
                  }),
                  const SizedBox(height: 10),
                  Text("Password", style: ts16mcBlack),
                  const SizedBox(height: 5),
                  Consumer<LoginProvider>(builder: (context, password, _) {
                    return TextFormFieldWidget(
                      controller: password.passwordController,
                      hintText: "Enter Password",
                      width: MediaQuery.of(context).size.width * (350 / 375),
                      height: MediaQuery.of(context).size.height * (50 / 800),
                    );
                  }),
                  const SizedBox(height: 40),
                  Consumer<LoginProvider>(builder: (context, login, _) {
                    return LoginButtonWidget(
                      color: const Color(0xff006837),
                      press: () {
                        login.login(context);
                      },
                      title: 'Login',
                    );
                  }),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 80),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                              text:
                                  "By creating or logging into an account, you are agreeing with our "),
                          TextSpan(
                            text: "Terms and Conditions",
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(text: ". "),
                          TextSpan(text: "with our "),
                          TextSpan(
                            text: "Privacy policy",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
