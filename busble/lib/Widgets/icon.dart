import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key, required this.icon, this.color, this.size});

  final IconData icon;
  final Color? color;
  final double? size;

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.icon,
      color: widget.color,
      size: widget.size,
    );
  }
}
