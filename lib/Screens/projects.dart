import 'package:flutter/material.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:my_portfolio/External_Widgets/lists.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  int currentPageIndex = 0;
  int imgindex = 0;
  String clickedProject = "ProjectName";
  int clickedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
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
                  ],
                ),
              ),
              Text(
                "All Projects ${allProjects.length}   ",
                style: textStyle("nunito", 12.sp, Colors.green),
              ),
              Container(
                alignment: Alignment.center,
                height: 40.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: allProjects.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          clickedProject = "ProjectName";

                          clickedIndex = index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 3.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 3.h),
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
                        child: Text(
                          allProjects[index]["Project"]["ProjectName"],
                          style: textStyle("nunito", 13.sp, Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
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
                  child: ListView(
                    children: [
                      Center(     
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${allProjects[clickedIndex]["Project"]["ProjectID"].toString()} of ${allProjects.length}",
                              style: textStyle("nunito", 14.sp, Colors.white),
                            ),
                            Text(
                              allProjects[clickedIndex]["Project"]
                                  [clickedProject],
                              style: textStyle("nunito", 16.sp, Colors.green),
                            ),
                            Text("       "),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: double.infinity,
                        height: 120.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return imageGoesHere(index);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Project Date",
                        style: textStyle("nunito", 14.sp, Colors.green),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        allProjects[clickedIndex]["Project"]
                            ["ProjectStartDate"],
                        style: textStyle("nunito", 14.sp, Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Project Type",
                        style: textStyle("nunito", 14.sp, Colors.green),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        allProjects[clickedIndex]["Project"]["ProjectType"],
                        style: textStyle("nunito", 14.sp, Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Project Aim",
                        style: textStyle("nunito", 14.sp, Colors.green),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        allProjects[clickedIndex]["Project"]["ProjectAim"],
                        style: textStyle("nunito", 14.sp, Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Project Desciption",
                        style: textStyle("nunito", 14.sp, Colors.green),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        allProjects[clickedIndex]["Project"]["ProjectDesc"],
                        style: textStyle("nunito", 14.sp, Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Tools and Technology Used",
                        style: textStyle("nunito", 14.sp, Colors.green),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 20.h,
                        child: ListView.separated(
                            separatorBuilder: (context, index) => Text(
                                  "  |  ",
                                  style:
                                      textStyle("nunito", 15.sp, Colors.green),
                                ),
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return Text(
                                allProjects[clickedIndex]["Project"]
                                    ["ToolsAndTechnologyUsed"][index],
                                style: textStyle("nunito", 14.sp, Colors.white),
                                textAlign: TextAlign.justify,
                              );
                            }),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Significance",
                        style: textStyle("nunito", 14.sp, Colors.green),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 100.h,
                        child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Text(
                                "- ${allProjects[clickedIndex]["Project"]["ProjectSignificance"][index]}",
                                style: textStyle("nunito", 14.sp, Colors.white),
                                textAlign: TextAlign.justify,
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              ////////////////////
            ],
          ),
        ),
      ),
    );
  }

  Widget imageGoesHere(int index) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      height: 100.h,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                allProjects[clickedIndex]["Project"]["images"][index])),
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
    );
  }
}
