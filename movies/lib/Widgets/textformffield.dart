import 'package:flutter/material.dart';

class TextFormFieldwidget extends StatefulWidget {
  TextFormFieldwidget({
    super.key,
    this.borderwidth,
    required this.onTap,
    this.borderRadius,
    this.bordercolor,
    this.hintText,
    this.prefixIcon,
    this.maxLines,
  });
  final onTap;
  final BorderRadius? borderRadius;
  final Color? bordercolor;
  final double? borderwidth;
  final String? hintText;
  final Widget? prefixIcon;
  final int? maxLines;

  @override
  State<TextFormFieldwidget> createState() => _TextFormFieldwidgetState();
}

class _TextFormFieldwidgetState extends State<TextFormFieldwidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: widget.onTap,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: widget.borderRadius!,
          borderSide: BorderSide(
              color: widget.bordercolor!,
              width: widget.borderwidth!,
              style: BorderStyle.solid),
        ),
        prefixIcon: widget.prefixIcon,
      ),
    );
  }
}
