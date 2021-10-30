import 'package:flutter/material.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

List mySlides = [
  myProfileInfo(),
  certificatesSlide(),
  reachMe(),
  educationSlide(),
];

Widget myProfileInfo() {
  return Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      // color: Colors.pink,
      // alignment: Alignment.center,
      child: ListView(
        children: [
          singleInfoRow("Father Name", "Saeed ur Rehman"),
          SizedBox(
            height: 8.h,
          ),
          singleInfoRow("Date of Birth", "April 02, 1998"),
          SizedBox(
            height: 8.h,
          ),
          singleInfoRow("CNIC", "17101-2538981-1"),
          SizedBox(
            height: 8.h,
          ),
          singleInfoRow("Domicile", "Charsaddah"),
          SizedBox(
            height: 8.h,
          ),
          singleInfoRow("Nationality", "Pakistan"),
          SizedBox(
            height: 8.h,
          ),
          singleInfoRow("Religion", "Islam"),
          SizedBox(
            height: 8.h,
          ),
          singleInfoRow("Languages", "Pashto, Urdu, English"),
          SizedBox(
            height: 8.h,
          ),
          singleInfoRow("Hobbies", "Coding and eating"),
          SizedBox(
            height: 8.h,
          ),
          singleInfoRow("email", "askhan09632@gmail.com"),
          SizedBox(
            height: 8.h,
          ),
          singleInfoRow("Address", ""),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Mohalla Madina Colony, Village Pehlawan Qilla, Teshil and P.O. Shabqadar, District Charsadda, KP Pakistan",
            style: textStyle("nunito", 12.sp, Colors.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    ),
  );
}

Widget certificatesSlide() {
  return Expanded(
    child: Container(
      // color: Colors.pink,
      // alignment: Alignment.center,
      child: ListView(
        children: [
          certificateItem("NTERNEE - Flutter Developer",
              "GRIP - The Spark Foundation 2021"),
          SizedBox(
            height: 6.h,
          ),
          certificateItem("Android App developement", "Kamyab Jawan - 2020"),
          SizedBox(
            height: 6.h,
          ),
          certificateItem(
              "AWS - Solution Architect", "Geneses Web Services - 2021"),
          SizedBox(
            height: 6.h,
          ),
          certificateItem("Flutter Developer", "DS4KP - 2021"),
          SizedBox(
            height: 6.h,
          ),
          certificateItem("Typing", "Specturem Computer College - 2019"),
          SizedBox(
            height: 6.h,
          ),
          certificateItem("Diploma of Information Technology", "CIT - 2019"),
          SizedBox(
            height: 6.h,
          ),
        ],
      ),
    ),
  );
}

Widget certificateItem(String certificateTitle, String orgAndDate) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    margin: EdgeInsets.all(7.r),
    alignment: Alignment.center,
    width: double.infinity,
    height: 80.h,
    decoration: BoxDecoration(
      color: lightBlack,
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: Colors.black,
          offset: Offset(1, 1),
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.circular(18.r),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                  image: AssetImage("assets/images/certificate.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  certificateTitle,
                  style: textStyle("nunito", 14.sp, Colors.green),
                ),
                Text(
                  orgAndDate,
                  style: textStyle("nunito", 11.sp, Colors.grey),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget singleInfoRow(String title, String value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        title,
        style: textStyle("nunito", 14.sp, mediumYellow),
      ),
      Text(
        value,
        style: textStyle("nunito", 13.sp, Colors.white),
      ),
    ],
  );
}

Widget reachMe() {
  return Expanded(
    child: Container(
      // padding: EdgeInsets.symmetric(horizontal: 20.w),
      // color: Colors.pink,
      // alignment: Alignment.center,
      child: ListView(
        children: [
          reachme(
              contactIconLink: "assets/images/facebook.png",
              contactSource: "facebook.com/askhan09632",
              contactTitle: "Facebook"),
          SizedBox(
            height: 6.h,
          ),
          reachme(
              contactIconLink: "assets/images/email.png",
              contactSource: "askhan09632@gmail.com",
              contactTitle: "Email"),
          SizedBox(
            height: 6.h,
          ),
          reachme(
              contactIconLink: "assets/images/whatsapp.png",
              contactSource: "+92 342 0963260",
              contactTitle: "Whatsapp"),
          SizedBox(
            height: 6.h,
          ),
          reachme(
              contactIconLink: "assets/images/instagram.png",
              contactSource: "askhan09632",
              contactTitle: "Instagram"),
          SizedBox(
            height: 6.h,
          ),
          reachme(
              contactIconLink: "assets/images/twitter.png",
              contactSource: "twitter.com/askhan09632",
              contactTitle: "Twitter"),
          SizedBox(
            height: 6.h,
          ),
          reachme(
              contactIconLink: "assets/images/github.png",
              contactSource: "github.com/askhan3260",
              contactTitle: "GitHub"),
          SizedBox(
            height: 6.h,
          ),
          reachme(
              contactIconLink: "assets/images/linkedin.png",
              contactSource: "linkedIn.com/askhan09632",
              contactTitle: "linkedIn"),
          SizedBox(
            height: 6.h,
          ),
          reachme(
              contactIconLink: "assets/images/telegram.png",
              contactSource: "+92 342 0963260",
              contactTitle: "Telegram"),
        ],
      ),
    ),
  );
}

Widget reachme(
    {required String contactIconLink,
    required String contactTitle,
    required String contactSource}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    margin: EdgeInsets.all(7.r),
    alignment: Alignment.center,
    width: double.infinity,
    height: 80.h,
    decoration: BoxDecoration(
      color: lightBlack,
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: Colors.black,
          offset: Offset(1, 1),
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.circular(18.r),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              image: DecorationImage(
                image: AssetImage(contactIconLink),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contactTitle,
                  style: textStyle("nunito", 15.sp, Colors.green),
                ),
                Text(
                  contactSource,
                  style: textStyle("nunito", 12.sp, Colors.grey),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget educationSlide() {
  return Expanded(
    child: Container(
      // color: Colors.pink,
      // alignment: Alignment.center,
      child: ListView(
        children: [
          educationSlideItem(
              degreetitle: "Matric",
              mainSubjects: "Science 2014",
              iconn: "10th",
              percentage: "85.63%"),
          SizedBox(
            height: 6.h,
          ),
          educationSlideItem(
              degreetitle: "FSc",
              mainSubjects: "Pre Engineering 2014 - 2016",
              iconn: "12th",
              percentage: "68.27%"),
          SizedBox(
            height: 6.h,
          ),
          educationSlideItem(
              degreetitle: "BSc",
              mainSubjects: "Computer Science 2016 - 2018",
              iconn: "BSc",
              percentage: "63.81%"),
          SizedBox(
            height: 6.h,
          ),
          educationSlideItem(
              degreetitle: "FSc",
              mainSubjects: "Computer Science 2016 - 2018",
              iconn: "MSc",
              percentage: "89.59%"),
          SizedBox(
            height: 6.h,
          ),
          educationSlideItem(
              degreetitle: "DIT",
              mainSubjects: "DIT all Subjects 2018 - 2019",
              iconn: "DIT",
              percentage: "79.14%"),
        ],
      ),
    ),
  );
}

Widget educationSlideItem(
    {required String degreetitle,
    required String mainSubjects,
    required String percentage,
    required String iconn}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    margin: EdgeInsets.all(7.r),
    alignment: Alignment.center,
    width: double.infinity,
    height: 80.h,
    decoration: BoxDecoration(
      color: lightBlack,
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: Colors.black,
          offset: Offset(1, 1),
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.circular(18.r),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              iconn,
              style: textStyle("roboto", 30.sp, mediumYellow),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      degreetitle,
                      style: textStyle("nunito", 14.sp, Colors.green),
                    ),
                    Text(
                      percentage,
                      style: textStyle("nunito", 12.sp, lightYellow),
                    ),
                  ],
                ),
                Text(
                  mainSubjects,
                  style: textStyle("nunito", 11.sp, Colors.grey),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
