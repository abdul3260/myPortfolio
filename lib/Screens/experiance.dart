import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:my_portfolio/External_Widgets/lists.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

class Experiance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
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
              SizedBox(
                height: 20.h,
              ),
              Text(
                "   Junior Flutter Developer, MSc. in Computer Science.passionate about Mobile Apps Development and problem-solving with a good experience in flutter development Provider, Flutter Bloc, Firebase, and Attractive UIs",
                style: textStyle("nunito", 11.sp, Colors.white),
                textAlign: TextAlign.justify,
              ),
              Text(
                "    Looking for opportunities as a Flutter developer with anexpert team of developers who help advance my careerprogression to senior positions in the future.",
                style: textStyle("nunito", 11.sp, Colors.white),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 7.h,
              ),
              Row(
                children: [
                  Spacer(),
                  horizontalLine(330.w),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                "WORK EXPERIANCE",
                style: textStyle("roboto", 16.sp, Colors.green),
              ),
              SizedBox(
                height: 9.h,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: experianceItems.length,
                    itemBuilder: (context, index) {
                      int value = index + 1;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.w),
                            child: Text(
                              value.toString(),
                              style: textStyle("nunito", 11.sp, Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          experianceItems[index],
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
