import 'package:flutter/material.dart';

class Textwidget extends StatefulWidget {
  const Textwidget({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textAlign,
    this.textDirection,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  State<Textwidget> createState() => _TextwidgetsState();
}

class _TextwidgetsState extends State<Textwidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: widget.color,
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight,
        fontStyle: widget.fontStyle,
        letterSpacing: widget.letterSpacing,
        wordSpacing: widget.wordSpacing,
      ),
      textAlign: widget.textAlign,
      textDirection: widget.textDirection,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
    );
  }
}
