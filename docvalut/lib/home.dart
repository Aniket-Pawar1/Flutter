import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 18, 79),
        toolbarHeight: 60.h,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 25.h,
            width: 25.w,
            decoration:
                BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
          ),
        ),
        title: Text(
          "DocuVault",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 25.sp),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 25.sp,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 25.sp,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 25.sp,
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All Credentials",
                style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    70,
                    50,
                    181,
                  ),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 25,
                crossAxisSpacing: 25,
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color: Colors.black, width: 1.w),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 244, 149),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.folder,
                                color: Colors.yellow[700],
                                size: 35.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Text(
                            "Identity Proofs",
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 18, 79),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "9 Documents",
                            style: TextStyle(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //2nd
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color: Colors.black, width: 1.w),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 149, 246, 255),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.folder,
                                color: Colors.blue[600],
                                size: 35.sp,
                              ),
                            ),
                          ),
                          Text(
                            "Certifications",
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 18, 79),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "12 Documents",
                            style: TextStyle(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color: Colors.black, width: 1.w),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Container(
                                height: 50.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 177, 167),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.folder,
                                  color: Colors.red[500],
                                  size: 35.sp,
                                )),
                          ),
                          Text(
                            "Immunization",
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 18, 79),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "3 Document(s)",
                            style: TextStyle(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color: Colors.black, width: 1.w),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Container(
                                height: 50.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 242, 192, 255),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.folder,
                                  color: Colors.purple[700],
                                  size: 35.sp,
                                )),
                          ),
                          Text(
                            "References",
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 18, 79),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "7 Document(s)",
                            style: TextStyle(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color: Colors.black, width: 1.w),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Container(
                                height: 50.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 149, 228, 255),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.folder,
                                  color: Colors.blue[600],
                                  size: 35.sp,
                                )),
                          ),
                          Text(
                            "Lisensures",
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 18, 79),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "4 Document(s)",
                            style: TextStyle(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color: Colors.black, width: 1.w),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
                            child: Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 149, 255, 197),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.folder,
                                color: Colors.green[600],
                                size: 35.sp,
                              ),
                            ),
                          ),
                          Text(
                            "Degrees",
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 18, 79),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "92 Document(s)",
                            style: TextStyle(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            Icons.widgets_outlined,
            size: 30.sp,
          ),
          Icon(
            Icons.view_timeline_rounded,
            size: 30.sp,
          ),
          Icon(
            Icons.add,
            size: 30.sp,
          ),
          Icon(
            Icons.widgets_outlined,
            size: 30.sp,
          ),
          Icon(
            Icons.view_timeline_rounded,
            size: 30.sp,
          ),
        ],
        backgroundColor: Colors.white,
        buttonBackgroundColor: Color.fromARGB(255, 177, 106, 215),
      ),
    );
  }
}
