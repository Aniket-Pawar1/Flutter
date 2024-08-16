import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final profileimg;
  final username;

  Posts({required this.profileimg, required this.username});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(profileimg),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(username),
                ],
              ),
            ),
            Icon(Icons.more_vert)
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Image(
            isAntiAlias: true,
            width: double.infinity,
            image: NetworkImage(
              profileimg,
            ),
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.mode_comment_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.telegram_outlined,
                    size: 30,
                    color: Colors.black54,
                  ),
                ],
              ),
              Icon(
                Icons.turned_in_not_rounded,
                size: 30,
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Information About the Image",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
