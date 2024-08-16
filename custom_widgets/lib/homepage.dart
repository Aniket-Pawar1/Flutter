import 'package:custom_widgets/Widgets/textWidget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _threetext(),
        ],
      ),
    );
  }

  Widget _threetext() {
    return Center(
      child: Column(
        children: [
          Textwidget(
            text: 'Home',
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
          Textwidget(
            text: 'data',
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          Textwidget(
            text: 'samir',
            color: Colors.amber,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        Container(
          width: 300,
          child: Textwidget(
              text: 'This is an example of overflow      that is    used to    stop     overflow',
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              // overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
        ),
        ],
      ),
    );
  }
}
