// ignore_for_file: prefer_const_constructors, must_be_immutable, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:novinduscalicutinterview/utils/colors.dart';

class DatePickerWidget extends StatelessWidget {
  DatePickerWidget({super.key, required this.datePickController});
  TextEditingController datePickController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: Colors.grey[300]!,
        ),
      ),
      child: TextField(
        controller: datePickController,
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Color(0xff006837),
            size: 30,
          ),
          hintText: "Date",
          labelStyle: TextStyle(fontSize: 16, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: color242A38),
          ),
        ),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime(2101),
          );

          if (pickedDate != null) {
            String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
            datePickController.text = formattedDate;
          }
        },
      ),
    );
  }
}
