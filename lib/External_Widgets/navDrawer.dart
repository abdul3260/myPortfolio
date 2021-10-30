import 'package:flutter/material.dart';
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
                    image: AssetImage(
                        "assets/images/screenstack.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: ListView(
                children: [
                  drawerItem(icon: Icons.person, title: "Profile"),
                  SizedBox(
                    height: 10.h,
                  ),
                  drawerItem(icon: Icons.engineering, title: "Projects"),
                  SizedBox(
                    height: 10.h,
                  ),
                  drawerItem(icon: Icons.psychology, title: "Experiance"),
                  SizedBox(
                    height: 10.h,
                  ),
                  drawerItem(icon: Icons.public, title: "Social Media"),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget drawerItem({required IconData icon, required String title}) {
  return Row(
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
  );
}
