import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Fitness extends StatelessWidget {
  const Fitness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(33, 16, 116, 116),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 16, 116, 116),
        title: const Text(
          "My Diary",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 20,
                        color: Colors.black,
                      ),
                      Text(
                        "15 May",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 20,
                )
              ],
            ),
          ),
        ],
      ),
//body Start
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mediterranean diet",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        "Detail",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 76, 39, 176)),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 7,
                        blurRadius: 7,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        " Eaten",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      ),
                                    ),
                                    Container(
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.water_drop,
                                            color: Colors.blue,
                                            size: 30,
                                          ),
                                          Text(
                                            "1127",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            " kcal",
                                            style: TextStyle(fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
//new
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        " Burned",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.grey),
                                      ),
                                    ),
                                    Container(
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.local_fire_department_sharp,
                                            color: Colors.redAccent,
                                            size: 30,
                                          ),
                                          Text(
                                            " 102",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            " kcal",
                                            style: TextStyle(fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              new CircularPercentIndicator(
                                radius: 55.0,
                                lineWidth: 10.0,
                                percent: 0.4,
                                center: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "1503",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 0, 100, 182),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "kcal left",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 112, 112, 112),
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                progressColor: Colors.blue,
                              ),
                              //here we have to add the progress indicator
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                "Carbs",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              new LinearPercentIndicator(
                                width: 90,
                                lineHeight: 4,
                                percent: 0.7,
                                progressColor:
                                    const Color.fromARGB(255, 7, 136, 241),
                                backgroundColor:
                                    const Color.fromARGB(255, 176, 229, 255),
                                barRadius: const Radius.circular(100),
                              ),
                              const Text(
                                "12g left",
                                style: TextStyle(
                                    color: Color.fromARGB(
                                        255, 139, 139, 139)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                "Protein",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              new LinearPercentIndicator(
                                width: 90,
                                lineHeight: 4,
                                percent: 0.5,
                                progressColor: const Color.fromARGB(255, 241, 7, 26),
                                backgroundColor: const Color.fromARGB(41, 241, 7, 26),
                                barRadius: const Radius.circular(100),
                              ),
                              const Text(
                                "30g left",
                                style: TextStyle(
                                    color: Color.fromARGB(
                                        255, 139, 139, 139)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                "Fat",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              new LinearPercentIndicator(
                                width: 90,
                                lineHeight: 4,
                                percent: 0.3,
                                progressColor:
                                    const Color.fromARGB(255, 212, 209, 32),
                                backgroundColor:
                                    const Color.fromARGB(69, 228, 224, 0),
                                barRadius: const Radius.circular(100),
                              ),
                              const Text(
                                "10g left",
                                style: TextStyle(
                                    color: Color.fromARGB(
                                        255, 139, 139, 139)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Meals today",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        "Customize ",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 76, 39, 176)),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Container(
                      height: 240,
                      width: 140,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 71, 58),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.asset(
                                'bread.png',
                                height: 70,
                              ),
                            ),
                            const Text(
                              "Breakfast",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Bread,",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text("Peanut butter,",
                                style: TextStyle(color: Colors.white)),
                            const Text("Apple,",
                                style: TextStyle(color: Colors.white)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "525",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  " kcal",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 240,
                      width: 140,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 83, 64, 251),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.asset(
                                'lunch.png',
                                height: 70,
                              ),
                            ),
                            const Text(
                              "Lunch",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "salmon,",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text("Mixed Veggies,",
                                style: TextStyle(color: Colors.white)),
                            const Text("Avocade,",
                                style: TextStyle(color: Colors.white)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "602",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  " kcal",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 240,
                      width: 14,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 94, 0),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.asset(
                                'bread.png',
                                height: 70,
                              ),
                            ),
                            const Text(
                              "Break fast",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Bread,",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text("Peanut butter,",
                                style: TextStyle(color: Colors.white)),
                            const Text("Apple,",
                                style: TextStyle(color: Colors.white)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "525",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  " kcal",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(Icons.library_books),
          Icon(Icons.directions_walk_sharp),
          Icon(Icons.add_circle_rounded),
          Icon(Icons.apple_sharp),
          Icon(Icons.person),
        ],
      
      ),
    );
  }
}
