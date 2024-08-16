import 'package:flutter/material.dart';

class Textwidgets extends StatelessWidget {
  const Textwidgets({super.key, required this.text, this.color, this.fontSize});

  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: fontSize),
    );
  }
}
