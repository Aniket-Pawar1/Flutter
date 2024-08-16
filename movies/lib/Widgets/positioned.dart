import 'package:flutter/material.dart';

class PositionedWidget extends StatefulWidget {
  const PositionedWidget(
      {super.key,
      required this.child,
      this.bottom,
      this.top,
      this.height,
      this.left,
      this.right,
      this.width});
  final Widget child;
  final double? bottom;
  final double? top;
  final double? left;
  final double? right;
  final double? height;
  final double? width;

  @override
  State<PositionedWidget> createState() => _PositionedWidgetState();
}

class _PositionedWidgetState extends State<PositionedWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: widget.child,
      bottom: widget.bottom,
      top: widget.top,
      left: widget.left,
      right: widget.right,
      height: widget.height,
      width: widget.width,
    );
  }
}
