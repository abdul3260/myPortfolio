import 'package:flutter/material.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:my_portfolio/Services/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

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
              SizedBox(
                height: 20.h,
              ),
              Image.asset("assets/images/socialMediaPngImage.png"),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardItem(
      {required String text,
      required String imageLink,
      required VoidCallback ontap}) {
    return Expanded(
      child: InkWell(
        onTap: ontap,
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // border: Border.all(
              //   color: skyBlue,
              // ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.black,
                  offset: Offset(1, 1),
                  spreadRadius: 2,
                )
              ],
              color: black,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50.w,
                  height: 50.h,
                  child: Image.asset(imageLink),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  text,
                  style: mediumText,
                ),
              ],
            )),
      ),
    );
  }
}
