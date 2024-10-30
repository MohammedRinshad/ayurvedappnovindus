import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/screens/home/home_screen.dart';
import 'package:novinduscalicutinterview/utils/styles.dart';

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HomeScreen.route);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * (100 / 375),
        height: MediaQuery.of(context).size.height * (40 / 800),
        decoration: BoxDecoration(
          color: const Color(0xff006837),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text(
          "Search",
          style: ts16cwhite,
        )),
      ),
    );
  }
}
