import 'package:flutter/material.dart';
import 'package:test/list2.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bag",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.cancel,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            _aboutpage2(),
            Container(
              height: 620,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return MyList2();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _aboutpage2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text("buy it"),
          style: ButtonStyle(),
        ),
        Text("new tab"),
      ],
    );
  }
}
