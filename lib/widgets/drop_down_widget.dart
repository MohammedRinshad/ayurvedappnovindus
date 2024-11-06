import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomDropdownWidget extends StatelessWidget {
  final String hintText;
  final List<String> items;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;
  final double? width;
  final double? height;

  const CustomDropdownWidget({
    Key? key,
    required this.hintText,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    this.height,
    this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width??MediaQuery.of(context).size.width * (350 / 375),
      height: height??MediaQuery.of(context).size.height * (60 / 800),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: selectedValue,
                hint: Text(
                  hintText,
                  style: ts12mcBlack,
                ),
                items: items.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: ts12mcBlack,
                    ),
                  );
                }).toList(),
                onChanged: onChanged,
                icon: const SizedBox.shrink(), 
              ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Color(0xff006837),
          ),
        ],
      ),
    );
  }
}
