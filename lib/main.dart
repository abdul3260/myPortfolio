import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Screens/profile.dart';
import 'package:my_portfolio/Screens/socialMedia.dart';
import 'Screens/myProfile.dart';
import 'Screens/projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360.0, 592.0),
      builder: () => MaterialApp(
        routes: {
          "/": (context) => MyProfile(),
          "/profile": (context) => Profile(),
          "/projects": (context) => Projects(),
          "/socialMedia": (context) => SocialMedia(),
          "/experiance": (context) => MyProfile(),
        },
        debugShowCheckedModeBanner: false,
        title: 'My PortFolio',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
      ),
    );
  }
}
