import 'package:flutter/material.dart';

class Materialbuttonwidget extends StatefulWidget {
  const Materialbuttonwidget(
      {super.key,
      required this.onPressed,
      required this.child,
      this.color,
      this.height,
      this.minWidth});

  final onPressed;
  final Widget child;
  final Color? color;
  final double? minWidth;
  final double? height;

  @override
  State<Materialbuttonwidget> createState() => _MaterialbuttonState();
}

class _MaterialbuttonState extends State<Materialbuttonwidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      child: widget.child,
      height: widget.height,
      minWidth: widget.minWidth,
      color: widget.color,
    );
  }
}
