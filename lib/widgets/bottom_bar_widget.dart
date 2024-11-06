
import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.arrow_back_outlined, size: 25),
          Stack(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Vector.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
