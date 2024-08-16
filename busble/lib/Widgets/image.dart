import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AssetImagewidget extends StatefulWidget {
  const AssetImagewidget(
      {super.key, required this.url, this.fit, this.height, this.width});
  final String url;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  State<AssetImagewidget> createState() => _AssetImagewidgetState();
}

class _AssetImagewidgetState extends State<AssetImagewidget> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(widget.url),
      height: widget.height,
      width: widget.width,
      fit: widget.fit,
    );
  }
}
