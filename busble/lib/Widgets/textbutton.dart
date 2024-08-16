import 'package:flutter/material.dart';

class TextbuttonWidget extends StatefulWidget {
  const TextbuttonWidget(
      {super.key, required this.onPressed, required this.child});
  final onPressed;
  final Widget child;

  @override
  State<TextbuttonWidget> createState() => _TextbuttonWidgetState();
}

class _TextbuttonWidgetState extends State<TextbuttonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: widget.child,
    );
  }
}
