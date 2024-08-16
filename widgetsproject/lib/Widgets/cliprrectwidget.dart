import 'package:flutter/material.dart';

class Cliprrectwidget extends StatefulWidget {
  const Cliprrectwidget({super.key, this.borderRadius, required this.child});
  final BorderRadiusGeometry? borderRadius;
  final Widget child;

  @override
  State<Cliprrectwidget> createState() => _CliprrectwidgetState();
}

class _CliprrectwidgetState extends State<Cliprrectwidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: widget.child,
      borderRadius: widget.borderRadius!,
    );
  }
}
