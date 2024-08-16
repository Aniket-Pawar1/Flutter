import 'package:audio_book/Widgets/container.dart';
import 'package:audio_book/Widgets/materialbutton.dart';
import 'package:audio_book/Widgets/text.dart';
import 'package:audio_book/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _appbar(),
          SizedBox(
            height: 40,
          ),
          _popularBook(),
          SizedBox(
            height: 30,
          ),
          _scrollbar(),
          SizedBox(
            height: 30,
          ),
          _threebtns(),
          SizedBox(
            height: 30,
          ),
          _playlist(),
        ],
      ),
    );
  }

  _appbar() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: [
          Icon(Icons.now_widgets_rounded),
          Spacer(),
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Container(
              decoration:
                  BoxDecoration(color: Colors.white10, shape: BoxShape.circle),
              child: Icon(Icons.notifications)),
        ],
      ),
    );
  }

  _popularBook() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Textwidget(
        text: "Popular books",
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  _scrollbar() {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: ContainerWidget(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ContainerWidget(
                decoration: BoxDecoration(
                    color: Colors.purple[900],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5, color: Colors.black26, spreadRadius: 2)
                    ]),
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Textwidget(
                              text: "All Romance \nBook",
                              color: Colors.white,
                              fontSize: 25,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Spacer(),
                          Textwidget(
                              text: "e-Book",
                              color: Colors.white,
                              fontSize: 17),
                        ],
                      ),
                      Image(
                        width: 100,
                        image: AssetImage('image.png'),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _threebtns() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Materialbuttonwidgets(
            onPressed: () {},
            child: Textwidget(
              text: "New",
              color: Colors.white,
              fontSize: 15,
            ),
            color: Colors.amber[600],
            minWidth: 100,
            height: 50,
          ),
          Materialbuttonwidgets(
            onPressed: () {},
            child: Textwidget(
              text: "Popular",
              color: Colors.white,
              fontSize: 15,
            ),
            color: Colors.redAccent,
            minWidth: 100,
            height: 50,
          ),
          Materialbuttonwidgets(
            onPressed: () {},
            child: Textwidget(
              text: "Trending",
              color: Colors.white,
              fontSize: 15,
            ),
            color: Colors.blue[400],
            minWidth: 100,
            height: 50,
          ),
        ],
      ),
    );
  }

  _playlist() {
    return Expanded(
      child: Container(
        height: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 10,
                          color: Color.fromARGB(10, 0, 0, 0))
                    ],
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          width: 80,
                          height: 120,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'data:image/jpeg;base64,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',
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Textwidget(
                                text: "4.5",
                                color: Colors.redAccent,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
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
                          Materialbuttonwidgets(
                            onPressed: () {},
                            child: Textwidget(
                              text: 'save',
                              fontSize: 12,
                              color: Colors.white,
                            ),
                            color: Colors.blue,
                            height: 30,
                            minWidth: 60,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Secondpage(),
                              ));
                        },
                        icon: Icon(Icons.more_vert_sharp),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
