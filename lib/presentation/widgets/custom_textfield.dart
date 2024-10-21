import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Color backgroundColor;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final double borderRadius;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.backgroundColor,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.obscureText = false,
    this.borderRadius = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600]),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        ),
      ),
    );
  }
}
