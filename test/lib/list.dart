import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  'bag.png',
                ),
              ),
            ),
            height: 150,
            width: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Text(
                      "Material Name",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  children: [
                    Text(
                      "Material info",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  children: [
                    Text(
                      "\$ 4.99",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                  child: MaterialButton(
                    onPressed: () {},
                    height: 40  ,
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          " Buying Now",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
