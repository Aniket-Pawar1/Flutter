import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main Wallet',
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.black87,
            child: Column(
              children: [
                _balancescreenWidget(),
                SizedBox(
                  height: 10,
                ),
                _threebuttonsWidget(),
                SizedBox(
                  height: 5,
                ),
                _twobuttonsWidget(),
                SizedBox(
                  height: 10,
                ),
                _transactionHistory(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            backgroundColor:
                Colors.orange, // Adjusted background color to orange
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor:
                Color.fromARGB(255, 84, 86, 216), // Selected item color
            unselectedItemColor: Colors.black, // Unselected item color
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.lock),
                label: 'Stats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.architecture_rounded),
                label: 'Reward',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.adjust_outlined),
                label: 'Goals',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _balancescreenWidget() {
    return Column(
      children: [
        Container(
          height: 260,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 84, 86, 216),
                Color.fromARGB(255, 128, 129, 221),
                Colors.white,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle_notifications,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Main Wallet ",
                      style: GoogleFonts.hind(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Balance",
                      style: GoogleFonts.abel(
                        textStyle: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "56,919.95",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white,
                      child: MaterialButton(
                        height: 45,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("      "),
                            Icon(
                              Icons.arrow_circle_up,
                              size: 25,
                            ),
                            Text("Send       ")
                          ],
                        ),
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white,
                      child: MaterialButton(
                        height: 45,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("      "),
                            Icon(
                              Icons.arrow_circle_down,
                              size: 25,
                            ),
                            Text("Receive       ")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _threebuttonsWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Material(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black87,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    " Price Options ",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  height: 50,
                ),
              )
            ],
          ),
          Column(
            children: [
              Material(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black87,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    " Wallet Collections ",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  height: 50,
                ),
              )
            ],
          ),
          Column(
            children: [
              Material(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black87,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Manage Tokens",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  height: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _twobuttonsWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(50),
        ),
        width: double.infinity,
        height: 50,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 84, 86, 216),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Tokens",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 167,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "NFTs",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _transactionHistory() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 340,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(31, 98, 98, 98),
                borderRadius: BorderRadius.circular(70),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          child: Image.asset('image.png'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Drive Wallet Token",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "+5.87",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "1,440,000 DWT",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "-\$87582",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(31, 98, 98, 98),
                borderRadius: BorderRadius.circular(70),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          child: Image.asset('image.png'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Drive Wallet Token",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "+5.87",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "1,440,000 DWT",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "-\$87582",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(31, 98, 98, 98),
                borderRadius: BorderRadius.circular(70),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white10,
                          child: Image.asset('image.png'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Drive Wallet Token",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "+5.87",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "1,440,000 DWT",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "-\$87582",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
