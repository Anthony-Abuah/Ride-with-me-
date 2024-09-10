import 'package:flutter/material.dart';


class BasicTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final TextInputType textInputType;
  final Color textColor;
  final Color labelColor;
  final Color backgroundColor;
  final double fontSize;

  const BasicTextField(
      {
        super.key,
        required this.text,
        required this.controller,
        this.obscureText = false,
        this.textCapitalization = TextCapitalization.none,
        required this.textInputType,
        required this.textColor,
        required this.labelColor,
        required this.backgroundColor,
        required this.fontSize,
      }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 288.0,
      height: 50.0,
      child: TextField(
        enabled: true,
        controller: controller,
        textCapitalization: textCapitalization,
        maxLength: 32,
        maxLines: 1,
        obscureText: obscureText,
        keyboardType: textInputType,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w700
        ),
        decoration: InputDecoration(
          isDense: true,
          labelText: text,
          counterText: "",
          contentPadding: const EdgeInsets.fromLTRB(14.0, 16.0, 14.0, 16.0),
          filled: true,
          fillColor: backgroundColor,
          labelStyle: TextStyle(color: labelColor),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(color: Colors.transparent)
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(color: Colors.transparent)
          ),
        ),
      ),
    );
  }
}
