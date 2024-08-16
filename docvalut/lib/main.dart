import 'package:docvalut/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(360, 740),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'New Page',
        home: Home(),
      ),
    );
  }
}
