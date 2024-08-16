import 'package:flutter/material.dart';
import 'package:movies/Widgets/image.dart';
import 'package:movies/Widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(223, 0, 0, 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _image(),
          _sabrina(),
        ],
      ),
    );
  }

  _image() {
    return Center(
      child: AssetImagewidget(
        url: 'image.png',
      ),
    );
  }

  _sabrina() {
    return TextWidget(
      text: 'Sabrina',
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }
}
