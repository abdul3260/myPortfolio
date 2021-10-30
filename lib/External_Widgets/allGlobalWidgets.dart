import 'package:flutter/material.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myNameAndLocationText() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "ABDUL SALAM",
          style: mediumTextNunitoFont,
        ),
        Row(
          children: [
            Icon(
              Icons.place,
              color: lightRed,
              size: 18.r,
            ),
            Text(
              "Shabqadar, Charsadda",
              style: smallText,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget horizontalLine(double mywidth) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    height: 1.h,
    width: mywidth,
    color: lightYellow,
  );
}

Widget myPicAvatar(double radiuss, VoidCallback ontap) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          blurRadius: 4,
          color: Colors.blueGrey,
          offset: Offset(1, 1),
          spreadRadius: 1,
        )
      ],
    ),
    child: CircleAvatar(
      backgroundColor: black,
      radius: radiuss,
      // backgroundColor: skyBlue,
      child: CircleAvatar(
        radius: radiuss,
        backgroundImage:
            AssetImage('assets/images/myPic_Transparent_Background.png'),
      ),
    ),
  );
}
