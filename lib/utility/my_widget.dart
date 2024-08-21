// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyElevatedBotton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  Color? textColor;
  Color? backgroundColor;
  double? fontSize;
  bool? bold;
  String? fontFamily;
  MyElevatedBotton({
    required this.onPressed,
    required this.text,
    this.textColor,
    this.backgroundColor,
    this.fontSize,
    this.bold,
    this.fontFamily,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: text.text.make(),
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor,
        backgroundColor: backgroundColor,
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
