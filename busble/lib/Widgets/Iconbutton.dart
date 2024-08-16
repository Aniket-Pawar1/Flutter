import 'package:flutter/material.dart';

class IconbuttonWidget extends StatefulWidget {
  const IconbuttonWidget(
      {super.key, required this.onPressed, required this.icon});
  final void Function() onPressed;
  final Widget icon;
  @override
  State<IconbuttonWidget> createState() => _IconbuttonWidgetState();
}

class _IconbuttonWidgetState extends State<IconbuttonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: widget.onPressed, icon: widget.icon);
  }
}
