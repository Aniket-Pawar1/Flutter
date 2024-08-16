import 'package:flutter/material.dart';

class Iconwidget extends StatelessWidget {
  const Iconwidget({super.key, required this.icon, this.color, this.size});
  final IconData icon;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}
