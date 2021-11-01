import 'package:flutter/material.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

Widget navDrawer(context) {
  return SafeArea(
    child: Container(
      // height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.75,
      color: black.withOpacity(0.7),
      child: Column(
        children: [
          Card(
            elevation: 9.r,
            child: DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                  color: black,
                  image: DecorationImage(
                    image: AssetImage("assets/images/screenstack.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Column(
                children: [
                  drawerItem(
                      icon: Icons.person,
                      title: "Profile",
                      ontap: () {
                        Navigator.pushNamed(context, "/profile");
                      }),
                  SizedBox(
                    height: 15.h,
                  ),
                  drawerItem(
                      icon: Icons.engineering,
                      title: "Projects",
                      ontap: () {
                        Navigator.pushNamed(context, "/projects");
                      }),
                  SizedBox(
                    height: 15.h,
                  ),
                  drawerItem(
                      icon: Icons.psychology,
                      title: "Experiance",
                      ontap: () {
                        Navigator.pushNamed(context, "/experiance");
                      }),
                  SizedBox(
                    height: 15.h,
                  ),
                  drawerItem(
                      icon: Icons.public,
                      title: "Social Media",
                      ontap: () {
                        Navigator.pushNamed(context, "/socialMedia");
                      }),
                  SizedBox(
                    height: 20.h,
                  ),
                  horizontalLine(double.infinity),
                  SizedBox(
                    height: 15.h,
                  ),
                  drawerItem(
                    icon: Icons.support,
                    title: "Support",
                    ontap: () {},
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  drawerItem(icon: Icons.share, title: "Share", ontap: () {}),
                  SizedBox(
                    height: 15.h,
                  ),
                  Spacer(),
                  Text(
                    "Abdul Salam - Version 1.0",
                    style: textStyle("nunito", 10.sp, Colors.grey),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget drawerItem(
    {required IconData icon, required String title, VoidCallback? ontap}) {
  return InkWell(
    onTap: ontap,
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.green,
        ),
        SizedBox(
          width: 20.w,
        ),
        Text(
          title,
          style: textStyle("nunito", 15.sp, lightYellow),
        )
      ],
    ),
  );
}
