

import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final storyimage;
  final username;

  Story({required this.storyimage, required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(storyimage), fit: BoxFit.cover),
                border: Border.all(
                    style: BorderStyle.solid, color: Colors.redAccent,width: 3)),
          ),
        ),
        Text('${username}')
      ],
    );
  }
}
