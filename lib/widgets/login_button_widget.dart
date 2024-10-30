import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/utils/styles.dart';

class LoginButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback press;
  final Color? color;
  const LoginButtonWidget(
      {super.key,
      required this.press,
      required this.color,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width * (350 / 375),
        height: MediaQuery.of(context).size.height * (50 / 800),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text(
          title,
          style: ts16cwhite,
        )),
      ),
    );
  }
}
