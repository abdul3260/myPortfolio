import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:my_portfolio/External_Widgets/lists.dart';
import 'package:my_portfolio/Services/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailedProject extends StatelessWidget {
  const DetailedProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: ListView(
            children: [
              Text(
                "Project Name",
                style: textStyle("nunito", 20.sp, Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
