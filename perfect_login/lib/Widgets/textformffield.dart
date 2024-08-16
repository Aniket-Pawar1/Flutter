import 'package:flutter/material.dart';

class TextFormFieldwidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: borderRadius!,
          borderSide: BorderSide(
              color: bordercolor!,
              width: borderwidth!,
              style: BorderStyle.solid),
        ),
        prefixIcon: prefixIcon,
      ),
    );
  }
}
