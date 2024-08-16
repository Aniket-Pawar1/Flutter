import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySquare extends StatelessWidget {
  final String image;
  final String text;

  MySquare({required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Container(
        height: 500,
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(image),
            Text(text),
          ],
        ),
      ),
    );
  }
}
