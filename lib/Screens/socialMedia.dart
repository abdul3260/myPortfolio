import 'package:flutter/material.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:url_launcher/url_launcher.dart';
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
          // padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Text(
                  "Flutter Developer",
                  style: textStyle("nunito", 11.sp, Colors.white),
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.r),
                        topRight: Radius.circular(50.r)),
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
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      ListTile(
                        onTap: () {
                          print("ItemClicked");
                        },
                        subtitle: Text(
                          "Click to Follow me on facebook",
                          style: textStyle("nunito", 12.sp, Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.green),
                        ),
                        leading:
                            Image.asset("assets/images/facebook_round.png"),
                        title: Text(
                          "Facebook",
                          style: textStyle("roboto", 16.sp, lightYellow),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        onTap: () async {
                          await launch(
                              "http://wa.me/923420963260?text=Hello Abdul Salam");
                        },
                        title: Text(
                          "Whatsapp",
                          style: textStyle("roboto", 16.sp, lightYellow),
                        ),
                        subtitle: Text(
                          "Click to find me on whatsapp",
                          style: textStyle("nunito", 12.sp, Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.green),
                        ),
                        leading:
                            Image.asset("assets/images/whatsapp_round.png"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Twitter",
                          style: textStyle("roboto", 16.sp, lightYellow),
                        ),
                        subtitle: Text(
                          "Click to follow me on Twitter",
                          style: textStyle("nunito", 12.sp, Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.green),
                        ),
                        leading: Image.asset("assets/images/twitter_round.png"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Instagram",
                          style: textStyle("roboto", 16.sp, lightYellow),
                        ),
                        subtitle: Text(
                          "Click to follow me on Instagram",
                          style: textStyle("nunito", 12.sp, Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.green),
                        ),
                        leading:
                            Image.asset("assets/images/instagram_round.png"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "LinkedIn",
                          style: textStyle("roboto", 16.sp, lightYellow),
                        ),
                        subtitle: Text(
                          "Click to link with me on LinkIn",
                          style: textStyle("nunito", 12.sp, Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.green),
                        ),
                        leading:
                            Image.asset("assets/images/linkedin_round.png"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Telegram",
                          style: textStyle("roboto", 16.sp, lightYellow),
                        ),
                        subtitle: Text(
                          "Click to find me on Telegram",
                          style: textStyle("nunito", 12.sp, Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.green),
                        ),
                        leading:
                            Image.asset("assets/images/telegram_round.png"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Snapchat",
                          style: textStyle("roboto", 16.sp, lightYellow),
                        ),
                        subtitle: Text(
                          "Click to follow me on snapchat",
                          style: textStyle("nunito", 12.sp, Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.green),
                        ),
                        leading:
                            Image.asset("assets/images/snapchat_round.png"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Gmail",
                          style: textStyle("roboto", 16.sp, lightYellow),
                        ),
                        subtitle: Text(
                          "Click for direct mail",
                          style: textStyle("nunito", 12.sp, Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.green),
                        ),
                        leading: Image.asset("assets/images/gmail_round.png"),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        onTap: () {},
                        title: Text(
                          "Github",
                          style: textStyle("roboto", 16.sp, lightYellow),
                        ),
                        subtitle: Text(
                          "Click to find me on Github",
                          style: textStyle("nunito", 12.sp, Colors.grey),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Colors.green),
                        ),
                        leading: Image.asset("assets/images/github_round.png"),
                      ),
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
