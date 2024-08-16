import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'newimge.png',
                            height: 35,
                          ),
                          Row(
                            children: [
                              Text(
                                " Flutter",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Events",
                                style: TextStyle(
                                    color: Colors.transparent,
                                    fontSize: 23.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.notifications_active_outlined,
                              color: Colors.white, size: 35),
                          Icon(Icons.view_module_sharp,
                              color: Colors.white, size: 35),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello, Sanskar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Let's Explore what's happening nearby!",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlBVsqJJ0Z7MCk6wHb6wpBohTZuwFvLzjDnw&s'),
                      ),
                    ],
                  ),
                  //calender
                  SizedBox(
                    height: 10,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100,
                        child: DatePicker(
                          height: 50,
                          DateTime.now(),
                          initialSelectedDate: DateTime.now(),
                          dateTextStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                          dayTextStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                          selectionColor: Colors.amber,
                          selectedTextColor: Color.fromARGB(255, 0, 0, 0),
                          monthTextStyle:
                              TextStyle(color: Colors.transparent, fontSize: 0),
                          onDateChange: (date) {
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "All Events",
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mic_external_on_rounded,
                              color: Colors.white,
                              size: 38.sp,
                            ),
                            Text(
                              "Concert",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sports_tennis,
                              color: Colors.white,
                              size: 38.sp,
                            ),
                            Text(
                              "Sports",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.assignment_turned_in,
                              color: Colors.white,
                              size: 38.sp,
                            ),
                            Text(
                              "Education",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Popular Events",
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          height: 100.h,
                          width: 320.w,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sport Meet in Galaxy Field",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.9.sp),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month_sharp,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          " Jan 12, 2019",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_sharp,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          " Greenfied, Secor 42, \n Faridabad",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image(
                                  filterQuality: FilterQuality.high,
                                  image: NetworkImage(
                                    'data:image/jpeg;base64,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',
                                  ),
                                  height: 118.h,
                                  width: 110.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100.h,
                          width: 320.w,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Art & Meet in street Plaza",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.2.sp),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month_sharp,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          " Jan 12, 2019",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_sharp,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          " Greenfied, Secor 22, \n Faridabad",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image(
                                  filterQuality: FilterQuality.high,
                                  image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ74BrFSlizdle2kNLToecAbCdO9TTP9u59Cg&usqp=CAU',
                                  ),
                                  height: 118.h,
                                  width: 110.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100.h,
                          width: 320.w,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Yougth Music in Gwalior",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17.2.sp),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month_sharp,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          " Jan 12, 2019",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_sharp,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          " Greenfied, Secor 22, \n Faridabad",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image(
                                  filterQuality: FilterQuality.high,
                                  image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi7Ku_p1_TCu6qhjNmyRSu8Nfxx7diItykVg&usqp=CAU',
                                  ),
                                  height: 118.h,
                                  width: 110.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
