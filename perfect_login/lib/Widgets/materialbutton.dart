import 'package:flutter/material.dart';

class Materialbutton extends StatelessWidget {
  const Materialbutton(
      {super.key, required this.onPressed, required this.child,this.color});

  final onPressed;
  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: child,
      height: 50,
      minWidth: double.infinity,
      color: color,
    );
  }
}
