import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Listviewbuilderwidget extends StatefulWidget {
  const Listviewbuilderwidget(
      {super.key,
      required this.itemBuilder,
      this.itemCount,
      this.scrollDirection});
  final IndexedWidgetBuilder itemBuilder;
  final Axis? scrollDirection;
  final int? itemCount;

  @override
  State<Listviewbuilderwidget> createState() => _ListviewbuilderwidgetState();
}

class _ListviewbuilderwidgetState extends State<Listviewbuilderwidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return widget.itemBuilder(context, index);
        },
        itemCount: widget.itemCount,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
