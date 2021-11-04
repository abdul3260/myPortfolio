import 'package:flutter/material.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

import 'Slides/profile_Slides.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int index = 0;
  String selectedItem = "Profile";
  bool profileIndex = false;
  bool certificateIndex = false;
  bool findMeIndex = false;
  bool educationIndex = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
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
                      height: 30.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 110.h,
                      // color: lightYellow,
                      child: Row(
                        children: [
                          topCardItem(0, () {
                            setState(() {
                              index = 0;
                              selectedItem = "Profile";
                            });
                          }, "Profile", Icons.person),
                          SizedBox(
                            width: 14.w,
                          ),
                          topCardItem(1, () {
                            setState(() {
                              index = 1;
                              selectedItem = "Certificate";
                            });
                          }, "Certificates", Icons.verified_user),
                          SizedBox(
                            width: 14.w,
                          ),
                          topCardItem(2, () {
                            setState(() {
                              index = 2;
                              selectedItem = "Find me";
                            });
                          }, "Find me", Icons.public),
                          SizedBox(
                            width: 14.w,
                          ),
                          topCardItem(3, () {
                            setState(() {
                              index = 3;
                              selectedItem = "Education";
                            });
                          }, "Education", Icons.school),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ), //
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 20.h,
                    right: 10.w,
                    left: 20.w,
                  ),
                  decoration: BoxDecoration(
                    color: lightBlack,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.black,
                        offset: Offset(1, 1),
                        spreadRadius: 2,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.r),
                      topRight: Radius.circular(35.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      choseSelectedItem(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget topCardItem(int currentIndex, VoidCallback ontapp, String titleText,
      IconData myIcon) {
    return Expanded(
      child: InkWell(
        onTap: () {
          ontapp();
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 15.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: index == currentIndex ? Colors.black : lightBlack,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: index == currentIndex ? Colors.green : Colors.black,
                offset: Offset(1, 1),
                spreadRadius: index == currentIndex ? 1 : 2,
              )
            ],
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5.r),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: black,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.black,
                      offset: Offset(1, 1),
                      spreadRadius: 2,
                    )
                  ],
                ),
                alignment: Alignment.center,
                child: Icon(
                  myIcon,
                  color: index == currentIndex ? Colors.green : lightYellow,
                  size: 26.r,
                ),
              ),
              horizontalLine(50),
              Text(
                titleText,
                style: textStyle("nunito", 11.sp,
                    index == currentIndex ? Colors.green : lightYellow),
              ),
            ],
          ),
        ),
      ),
    );
  }

  choseSelectedItem() {
    if (index == 0) {
      return mySlides[0];
    } else if (index == 1) {
      return mySlides[1];
    } else if (index == 2) {
      return mySlides[2];
    } else if (index == 3) {
      return mySlides[3];
    }
  }
}
