import 'package:flutter/material.dart';
import 'package:newproject/Widgets/textwidgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Textwidgets(
          text: 'text',
          color: Colors.amber,
          fontSize: 20,
        ),
      ],
    ));
  }
}
