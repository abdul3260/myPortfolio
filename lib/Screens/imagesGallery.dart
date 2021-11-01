import 'package:flutter/material.dart';
import 'package:my_portfolio/External_Widgets/lists.dart';
import 'package:my_portfolio/Screens/fullScreenImage.dart';
import 'package:my_portfolio/Services/colors.dart';
import 'package:my_portfolio/External_Widgets/allGlobalWidgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Services/customTextStyles.dart';

class ImagesGallery extends StatelessWidget {
  const ImagesGallery({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlack,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
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
                height: 20.h,
              ),
              Expanded(
                child: Container(
                  child: GridView.builder(
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 4.w,
                        mainAxisSpacing: 4.h,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FullScreenImage(
                                    image: images[index],
                                  ),
                                ),
                              );
                            },
                            child: images[index]);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
