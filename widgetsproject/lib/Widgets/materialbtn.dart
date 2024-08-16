import 'package:flutter/material.dart';

class Materialbutton extends StatefulWidget {
  Materialbutton(
      {Key? key,
      required this.onPressed,
      this.child,
      this.color,
      this.height,
      this.minWidth})
      : super(key: key);

  final Function onPressed;
  final Widget? child;
  final Color? color;
  final double? height;
  final double? minWidth;
  @override
  State<Materialbutton> createState() => _MaterialbuttonState();
}

class _MaterialbuttonState extends State<Materialbutton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        widget.onPressed();
      },
      color: widget.color,
      child: widget.child,
      height: widget.height,
      minWidth: widget.minWidth,
    );
  }
}
