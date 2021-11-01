import 'package:flutter/material.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:my_portfolio/Services/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "ABDUL SALAM",
                    style: textStyle("roboto", 22.sp, mediumYellow),
                  ),
                  Hero(
                    tag: "myPic",
                    child: myPicAvatar(radiuss: 20.r),
                  ),
                ],
              ),
              Text(
                "Flutter Developer",
                style: textStyle("nunito", 11.sp, Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
