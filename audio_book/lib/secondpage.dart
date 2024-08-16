import 'package:audio_book/PopularBooks.dart';
import 'package:audio_book/Widgets/container.dart';
import 'package:audio_book/Widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerWidget(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55))),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ContainerWidget(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90,
                      ),
                      Textwidget(
                        text: "The Water Cure",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      Textwidget(
                        text: 'By Martin Hyatt',
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 8),
                        child: ProgressBar(
                          timeLabelPadding: 10,
                          progress: Duration(
                            milliseconds: 1000,
                          ),
                          total: Duration(seconds: 250),
                          baseBarColor: Colors.grey,
                          thumbColor: Colors.amber,
                          progressBarColor: Colors.redAccent,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.restart_alt_rounded),
                          Icon(Icons.arrow_back_ios_new_rounded),
                          Icon(
                            Icons.pause_circle_filled_outlined,
                            size: 50,
                            color: Colors.blue,
                          ),
                          Icon(Icons.arrow_forward_ios_outlined),
                          Icon(Icons.shuffle),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  top: 10,
                  left: 0,
                  right: 0,
                ),
                Positioned(
                  top: 125,
                  child: ContainerWidget(
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30)),
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        maxRadius: 50,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRlQuf-uFXuHoBpWUO46Y1UVlDPjEW39Lk4AWvrupJ72RyG1m5M'),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Textwidget(
                  text: "Add to Playlist",
                  fontSize: 18,
                ),
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              width: 80,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtHvmZf1tFcAiwj6GUMyC6zKuXo3LbUkk_Cg&s')),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(blurRadius: 5, spreadRadius: 5,color: Color.fromARGB(43, 0, 0, 0))
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.blue,
                        ),
                        Icon(Icons.star),
                        Icon(Icons.remove_red_eye_outlined),
                        Icon(Icons.share),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
