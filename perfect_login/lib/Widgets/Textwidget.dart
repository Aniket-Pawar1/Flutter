import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  Textwidget(
      {super.key,
      required this.text,
      this.color,
      this.backgroundColor,
      this.fontSize,
      this.fontWeight,
      this.height,
      this.overflow});
  final String text;
  final Color? color;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        backgroundColor: backgroundColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,
        overflow: overflow,
      ),
    );
    
  }
}
