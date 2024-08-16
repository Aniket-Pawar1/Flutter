import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({
    super.key,
    this.child,
    this.borderRadius,
    this.boxShadow,
    this.color,
    this.height,
    this.image,
    this.shape = BoxShape.rectangle,
    this.width,
  });

  final Widget? child;
  final double? width;
  final double? height;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final BoxShape? shape;
  final List<BoxShadow>? boxShadow;
  final ImageProvider? image;

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: widget.borderRadius,
        shape: widget.shape!,
        boxShadow: widget.boxShadow,
        image: widget.image != null
            ? DecorationImage(
                image: widget.image!,
                fit: BoxFit.cover,
              )
            : null,
      ),
    );
  }
}
