import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

final experianceItems = [
  experianceItem(),
  experianceItem(),
  experianceItem(),
];

Widget experianceItem() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    margin: EdgeInsets.only(bottom: 10.h, left: 4.w, right: 4.w),
    // height: 200.h,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.r),
      color: lightBlack,
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: Colors.black,
          offset: Offset(1, 1),
          spreadRadius: 2,
        )
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Flutter Developer:",
          style: textStyle("nunito", 16.sp, Colors.white),
        ),
        Text(
          "ApTechMedia | March 2021 - present",
          style: textStyle("nunito", 11.sp, Colors.grey),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "•  Using provider state-management\n•  Authentication\n•  Facebook login & google sign up\n•  rest API & postman requests.\n•  responsible for architecting the project.\n•  Firebase ",
          style: textStyle("nunito", 11.sp, Colors.grey),
        ),
      ],
    ),
  );
}

final images = [
  Image.asset("assets/images/facebook.png"),
  Image.asset("assets/images/whatsapp.png"),
  Image.asset("assets/images/twitter.png"),
  Image.asset("assets/images/linkedin.png"),
  Image.asset("assets/images/man.png"),
  Image.asset("assets/images/email.png"),
  Image.asset("assets/images/github.png"),
  Image.asset("assets/images/hangout.png"),
  Image.asset("assets/images/idea.png"),
  Image.asset("assets/images/idcard.png"),
  Image.asset("assets/images/instagram.png"),
  Image.asset("assets/images/increase.png"),
  Image.asset("assets/images/facebook.png"),
  Image.asset("assets/images/whatsapp.png"),
  Image.asset("assets/images/twitter.png"),
  Image.asset("assets/images/linkedin.png"),
  Image.asset("assets/images/man.png"),
  Image.asset("assets/images/email.png"),
  Image.asset("assets/images/github.png"),
  Image.asset("assets/images/hangout.png"),
  Image.asset("assets/images/idea.png"),
  Image.asset("assets/images/idcard.png"),
  Image.asset("assets/images/instagram.png"),
  Image.asset("assets/images/increase.png"),
];


