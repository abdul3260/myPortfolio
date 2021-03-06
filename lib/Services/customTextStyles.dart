import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/colors.dart';

final largeTextManjariFont = TextStyle(
  fontFamily: "monserat",
  fontSize: 30.sp,
  fontWeight: FontWeight.bold,
  color: skyBlue,
);

final mediumTextNunitoFont = TextStyle(
  fontFamily: "roboto",
  fontSize: 20.sp,
  fontWeight: FontWeight.bold,
  color: mediumYellow,
);
final largeTextNunitoFont = TextStyle(
  fontFamily: "roboto",
  fontSize: 20.sp,
  fontWeight: FontWeight.bold,
  color: mediumYellow,
);

final largeTextSerifTextFont = TextStyle(
  fontFamily: "serifText",
  fontSize: 30.sp,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

final largeTextAntonFont = TextStyle(
  fontFamily: "anton",
  fontSize: 30.sp,
  // fontWeight: FontWeight.bold,
  color: skyBlue,
);

final largeTextLilitaFont = TextStyle(
  fontFamily: "lilita",
  fontSize: 30.sp,
  // fontWeight: FontWeight.bold,
  color: skyBlue,
);

final normalText = TextStyle(
  fontSize: 16.sp,
  color: Colors.white,
);

final smallText = TextStyle(
  fontSize: 11.sp,
  fontFamily: "nunito",
  color: Colors.white,
);

final mediumText = TextStyle(
  fontSize: 13.sp,
  fontFamily: "nunito",
  color: Colors.white,
);
final smallTextColored = TextStyle(
  fontSize: 12.sp,
  color: skyBlue,
);

TextStyle textStyle(String? fontfamily, double fontsize, Color? color) {
  return TextStyle(fontFamily: fontfamily, fontSize: fontsize, color: color);
}
