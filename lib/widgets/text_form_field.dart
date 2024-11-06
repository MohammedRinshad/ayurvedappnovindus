import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:novinduscalicutinterview/utils/colors.dart';
import 'package:novinduscalicutinterview/utils/styles.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final bool? enabled;
  final String? Function(String?)? validator;
  final String? errorText;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final double? width;
  final double? height;
  final Function(String)? onChanged;

  const TextFormFieldWidget({
    Key? key,
    this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.enabled,
    this.validator,
    this.errorText,
    this.autofocus = false,
    this.inputFormatters,
    this.maxLength,
    this.width,
    this.height,
    this.onChanged,
  }) : super(key: key);

  final OutlineInputBorder _outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        inputFormatters: inputFormatters,
        controller: controller,
        enabled: enabled,
        textCapitalization: textCapitalization,
        keyboardType: keyboardType,
        obscureText: obscureText,
        obscuringCharacter: '*',
        validator: validator,
        style: ts12mcBlack,
        maxLength: maxLength,
        autofocus: autofocus,
        cursorColor: color242A38,
        onChanged: onChanged,
        textAlign: TextAlign.left, // Center-aligns hintText and text
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: ts12mcBlack,
          labelText: labelText,
          errorText: errorText,
          errorMaxLines: 2,
          counterText: '',
          labelStyle: ts12mcBlack,
          filled: true,
          fillColor: Colors.grey.shade100,
          border: _outlineInputBorder.copyWith(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: _outlineInputBorder.copyWith(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          disabledBorder: _outlineInputBorder.copyWith(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: _outlineInputBorder.copyWith(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        ),
      ),
    );
  }
}
