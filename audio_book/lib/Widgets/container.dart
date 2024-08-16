import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({
    super.key,
    this.color,
    this.width,
    this.height,
    this.alignment,
    this.padding,
    this.margin,
    this.decoration,
    this.foregroundDecoration,
    this.constraints,
    this.transform,
    this.child,
  });

  final Color? color;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;
  final Matrix4? transform;
  final Widget? child;

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      width: widget.width,
      height: widget.height,
      alignment: widget.alignment,
      padding: widget.padding,
      margin: widget.margin,
      decoration: widget.decoration,
      foregroundDecoration: widget.foregroundDecoration,
      constraints: widget.constraints,
      transform: widget.transform,
      child: widget.child,
    );
  }
}
