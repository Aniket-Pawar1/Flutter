import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget(
      {super.key,
      required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign});
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
          color: widget.color,
          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight),
    );
  }
}
