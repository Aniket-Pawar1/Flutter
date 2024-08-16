import 'package:calender/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'img1.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('image.png'),
                width: 70.w,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Flutter",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Events",
                          style: TextStyle(
                              color: Colors.amber[600],
                              fontSize: 23.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      "There's a lot happing around you! Our mission is to provide whats happening near you!",
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          "Get Started",
                          style:
                              TextStyle(color: Colors.white, fontSize: 17.sp),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page2()));
                          },
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                            size: 25.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
