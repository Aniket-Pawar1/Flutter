import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  Textwidget(
      {super.key,
      this.overflow,
      required this.text,
      this.color,
      this.fontSize,
      this.background,
      this.fontWeight,
      this.maxLines});
  final String text;
  final Color? color;
  final double? fontSize;
  final Paint? background;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        background: background,
        fontWeight: fontWeight,
        overflow: overflow,
        
      ),
      maxLines: maxLines,
    );
  }
}
