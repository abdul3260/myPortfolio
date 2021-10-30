import 'package:flutter/material.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:my_portfolio/External_Widgets/navDrawer.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              black,
                              lightBlack,
                              black,
                            ]),
                            // border: Border.all(width: 1.w, color: skyBlue),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myNameAndLocationText(),
                              flutterAppDeveloperText(),
                              mobileNumberText(),
                              Spacer(),
                              // twoIconButtons(),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.black,
                                  offset: Offset(1, 1),
                                  spreadRadius: 2,
                                )
                              ],
                              color: lightBlack,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.r),
                                topRight: Radius.circular(50.r),
                              )),
                          alignment: Alignment.center,
                          child: Container(
                            width: 300.w,
                            height: 260.h,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      cardItem(
                                          text: "Profile",
                                          imageLink: "assets/images/man.png",
                                          ontap: () {
                                            Navigator.pushNamed(
                                                context, "/profile");
                                          }),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      cardItem(
                                          text: "Projects",
                                          imageLink:
                                              "assets/images/projects.png",
                                          ontap: () {
                                            Navigator.pushNamed(
                                                context, "/projects");
                                          }),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      cardItem(
                                          text: "Social Media",
                                          imageLink:
                                              "assets/images/socialMedia.png",
                                          ontap: () {
                                            Navigator.pushNamed(
                                                context, "/socialMedia");
                                          }),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      cardItem(
                                          text: "Experiance",
                                          imageLink: "assets/images/idea.png",
                                          ontap: () {
                                            Navigator.pushNamed(
                                                context, "/experiance");
                                          }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              Positioned(
                top: 115.h,
                left: 120.w,
                right: 120.w,
                child: Hero(
                  tag: "myPic",
                  child: myPicAvatar(55.r, () {
                    Navigator.pushNamed(context, "/myphotosgallary");
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: navDrawer(context),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(label: "Item one", icon: Icon(Icons.person)),
      //   BottomNavigationBarItem(label: "Item two", icon: Icon(Icons.person)),
      //   BottomNavigationBarItem(label: "Item three", icon: Icon(Icons.person)),
      // ]),
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

  Widget profileIcon({required IconData icon}) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 4.r,
            color: Colors.black,
            offset: Offset(0, 4),
            spreadRadius: 2.r,
          )
        ],
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 30.r,
        ),
        color: red,
      ),
    );
  }

  Widget myNameAndLocationText() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Hero(
            tag: "myNameHero",
            child: Text(
              "ABDUL SALAM",
              style: mediumTextNunitoFont,
            ),
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

  Widget flutterAppDeveloperText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Icon(Icons.work, color: Colors.green, size: 18.r),
          SizedBox(
            width: 5.w,
          ),
          Text(
            "Flutter Apps Developer",
            style: smallText,
          ),
        ],
      ),
    );
  }

  Widget twoIconButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          profileIcon(icon: Icons.person),
          profileIcon(icon: Icons.favorite),
        ],
      ),
    );
  }

  Widget mobileNumberText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.phone, color: Colors.green, size: 18.r),
          SizedBox(
            width: 5.w,
          ),
          Text(
            "+92 342 0963260",
            style: smallText,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
