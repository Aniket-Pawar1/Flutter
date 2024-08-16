import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  const Textwidget({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.wordSpacing,
    this.letterSpacing,
    this.fontWeight,
  });
  final String text;
  final Color? color;
  final double? fontSize;
  final double? wordSpacing;
  final double? letterSpacing;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
      ),
    );
  }
}
