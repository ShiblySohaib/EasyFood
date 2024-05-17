import 'package:flutter/material.dart';
import 'customButton.dart';

import 'package:flutter/material.dart';

class customTextInput extends StatelessWidget {
  final double width = 300;
  final double borderRadius = 25;
  final boxColor = Color(0xFFF2F2F2);
  final String hintText;
  final TextEditingController? controller;
  final bool editable;

  customTextInput({
    required this.hintText,
    this.controller,
    this.editable = true, // Default value to ensure backward compatibility
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextField(
        controller: controller,
        enabled: editable,  // Control whether the TextField is editable
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class customPassInput extends StatelessWidget {
  final double width = 300;
  final double borderRadius = 25;
  final boxColor = Color(0xFFF2F2F2);
  final bool obscureText = true;
  String hintText = 'Password';
  final TextEditingController? controller;

  customPassInput({
    required this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextField(
        controller: controller,  // Add this line
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          border: InputBorder.none,
        ),
      ),
    );
  }
}