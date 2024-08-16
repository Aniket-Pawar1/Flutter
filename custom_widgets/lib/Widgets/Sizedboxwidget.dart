import 'package:flutter/material.dart';

class Sizedboxwidget extends StatelessWidget {
   Sizedboxwidget({super.key,this.height,this.width,this.child});


final double? height;
final double? width;
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(   
      height: height,
      width: width,
      child: child,
    );
  }
}