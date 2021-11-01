import 'package:flutter/material.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FullScreenImage extends StatelessWidget {
  Image? image = Image.asset("assets/images/whatsapp.png");
  FullScreenImage({this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            // padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
            child: InteractiveViewer(child: image as dynamic)),
      ),
    );
  }
}
