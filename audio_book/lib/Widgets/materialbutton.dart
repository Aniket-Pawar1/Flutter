import 'package:flutter/material.dart';

class Materialbuttonwidgets extends StatelessWidget {
  const Materialbuttonwidgets({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.height,
    this.minWidth,
  });

  final onPressed;
  final Widget child;
  final Color? color;
  final double? height;
  final double? minWidth;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: child,
      height: height,
      minWidth: minWidth,
      color: color,
    );
  }
}
