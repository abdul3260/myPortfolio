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
          style: textStyle("nunito", 16.sp, Colors.green),
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

///////////////////////////////
List<Widget> projectItems = [
  ProjectItem(),
  ProjectItem(),
  ProjectItem(),
];

////////////////////////////
class ProjectItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/detialedProject");
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/socialMediaPngImage.png"),
              fit: BoxFit.cover),
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
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 40.h,
                  color: Colors.black54,
                  child: Text(
                    allProjects[0]["HostelLocator"]["ProjectName"],
                    style: textStyle("nunito", 20.sp, Colors.green),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
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

Map<String, dynamic> myprojects = {
  "projectName": "BMI Calculator",
};

List allProjects = [
  {
    "Project": {
      "ProjectID": 1,
      "ProjectName": "Hostel Locator",
      "ProjectDesc":
          "An app named Hostel locator is created for the purpose to help the students to find the hostels nearby. This app tracks the user's current location and shows all the hostels nearby on the map. This also has an option for the owners of the hostels to add their hostel. (Update and delete). The students also can chat with the owners of the hostels with an easy and simple interface. The app is using firebase authentication, Real-Time Database, and Storage. the app is under development and more features can be added soon. E.g hostels categorization based on male and female, online booking, payment, etc",
      "ProjectStartDate": "2020",
      "ProjectType": "FYP",
      "ProjectAim":
          "“To Design an android based mobile application for students to find there accommodation easily in the city”",
      "ToolsAndTechnologyUsed": [
        "Android Studio",
        "Android Virtual Devices",
        "Java as Backend Language",
        "XML as Front end Language",
        "Firebase Authentication",
        "Firebase DataBase",
        "Firebase Storage",
        "Google Maps SDK"
      ],
      "ProjectSignificance": [
        "Ease in sorting out hostel.",
        "Time saving application.",
        "Hostel categorization based on budget and facilities",
        "User can access all details of hostel with a single click"
      ],
      "images": [
        "https://thumbs.dreamstime.com/b/beds-hostel-affordable-housing-36997317.jpg",
        "https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://res.cloudinary.com/hostelling-internation/image/upload/t_hostel_carousel/f_auto,q_auto/v1565973406/kwunkr44mtjdrqrzz3s7.jpg"
      ],
      "Problem Description":
          "Students from far flung areas studying in colleges/ universities in the city face sole problems in searching suitable hostels for their stay due to lack of information and due to shortage of time because of their tight academic schedule. Students look for an economic as well as nearest hostel to their institutes in order to commute easily and save time."
    }
  },
  {
    "Project": {
      "ProjectID": 2,
      "ProjectName": "Direct Whatsapp",
      "ProjectDesc":
          "The App named Direct whatsapp is a very helpful application in now a days. People love to connect with each other on whatsapp because whatsap is highly secured and trusted app. But on of the annoying thing about whatsap is saving phone number first to connect with your friend. This app overcomes that big issue and help users to send message direclty without saving some one's number",
      "ProjectStartDate": "November 02, 2021",
      "ProjectType": "Flutter",
      "ProjectAim":
          "“To Design a Flutter Application which helps whatsap users to send message directly, with out saving some one's number”",
      "ToolsAndTechnologyUsed": [
        "Visual Studio Code",
        "AVD",
        "Dart",
        "Laptop",
        "Charger",
        "Real Device",
        "Url Launcher Plugin",
        "Adobe UX/UI"
      ],
      "ProjectSignificance": [
        "Ease in sending message",
        "Time saving application.",
        "Global Application",
        "User friendly"
      ],
      "images": [
        "https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2hhdHNhcHB8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
        "https://cdn.images.express.co.uk/img/dynamic/59/590x/secondary/whatsapp-images-why-is-whatsapp-not-downloading-pictures-troubleshooting-2431176.jpg?r=1604676050985",
        "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202005/whatsapp-2105015_1920.jpeg?9WkXIGcRC4fzrWi_DHKzUEyggePisk3t&size=770:433"
      ],
      "Problem Description":
          "Students from far flung areas studying in colleges/ universities in the city face sole problems in searching suitable hostels for their stay due to lack of information and due to shortage of time because of their tight academic schedule. Students look for an economic as well as nearest hostel to their institutes in order to commute easily and save time."
    }
  },
  {
    "Project": {
      "ProjectID": 3,
      "ProjectName": "My Portfolio",
      "ProjectDesc":
          "An app named Hostel locator is created for the purpose to help the students to find the hostels nearby. This app tracks the user's current location and shows all the hostels nearby on the map. This also has an option for the owners of the hostels to add their hostel. (Update and delete). The students also can chat with the owners of the hostels with an easy and simple interface. The app is using firebase authentication, Real-Time Database, and Storage. the app is under development and more features can be added soon. E.g hostels categorization based on male and female, online booking, payment, etc",
      "ProjectStartDate": "2020",
      "ProjectType": "FYP",
      "ProjectAim":
          "“To Design an android based mobile application for students to find there accommodation easily in the city”",
      "ToolsAndTechnologyUsed": [
        "Android Studio",
        "Android Virtual Devices",
        "Java as Backend Language",
        "XML as Front end Language",
        "Firebase Authentication",
        "Firebase DataBase",
        "Firebase Storage",
        "Google Maps SDK"
      ],
      "ProjectSignificance": [
        "Ease in sorting out hostel.",
        "Time saving application.",
        "Hostel categorization based on budget and facilities",
        "User can access all details of hostel with a single click"
      ],
      "images": [
        "https://thumbs.dreamstime.com/b/beds-hostel-affordable-housing-36997317.jpg",
        "https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://res.cloudinary.com/hostelling-internation/image/upload/t_hostel_carousel/f_auto,q_auto/v1565973406/kwunkr44mtjdrqrzz3s7.jpg"
      ],
      "Problem Description":
          "Students from far flung areas studying in colleges/ universities in the city face sole problems in searching suitable hostels for their stay due to lack of information and due to shortage of time because of their tight academic schedule. Students look for an economic as well as nearest hostel to their institutes in order to commute easily and save time."
    }
  },
  {
    "Project": {
      "ProjectID": 4,
      "ProjectName": "Quiz App",
      "ProjectDesc":
          "An app named Hostel locator is created for the purpose to help the students to find the hostels nearby. This app tracks the user's current location and shows all the hostels nearby on the map. This also has an option for the owners of the hostels to add their hostel. (Update and delete). The students also can chat with the owners of the hostels with an easy and simple interface. The app is using firebase authentication, Real-Time Database, and Storage. the app is under development and more features can be added soon. E.g hostels categorization based on male and female, online booking, payment, etc",
      "ProjectStartDate": "2020",
      "ProjectType": "FYP",
      "ProjectAim":
          "“To Design an android based mobile application for students to find there accommodation easily in the city”",
      "ToolsAndTechnologyUsed": [
        "Android Studio",
        "Android Virtual Devices",
        "Java as Backend Language",
        "XML as Front end Language",
        "Firebase Authentication",
        "Firebase DataBase",
        "Firebase Storage",
        "Google Maps SDK"
      ],
      "ProjectSignificance": [
        "Ease in sorting out hostel.",
        "Time saving application.",
        "Hostel categorization based on budget and facilities",
        "User can access all details of hostel with a single click"
      ],
      "images": [
        "https://thumbs.dreamstime.com/b/beds-hostel-affordable-housing-36997317.jpg",
        "https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://res.cloudinary.com/hostelling-internation/image/upload/t_hostel_carousel/f_auto,q_auto/v1565973406/kwunkr44mtjdrqrzz3s7.jpg"
      ],
      "Problem Description":
          "Students from far flung areas studying in colleges/ universities in the city face sole problems in searching suitable hostels for their stay due to lack of information and due to shortage of time because of their tight academic schedule. Students look for an economic as well as nearest hostel to their institutes in order to commute easily and save time."
    }
  },
  {
    "Project": {
      "ProjectID": 5,
      "ProjectName": "TODO App",
      "ProjectDesc":
          "An app named Hostel locator is created for the purpose to help the students to find the hostels nearby. This app tracks the user's current location and shows all the hostels nearby on the map. This also has an option for the owners of the hostels to add their hostel. (Update and delete). The students also can chat with the owners of the hostels with an easy and simple interface. The app is using firebase authentication, Real-Time Database, and Storage. the app is under development and more features can be added soon. E.g hostels categorization based on male and female, online booking, payment, etc",
      "ProjectStartDate": "2020",
      "ProjectType": "FYP",
      "ProjectAim":
          "“To Design an android based mobile application for students to find there accommodation easily in the city”",
      "ToolsAndTechnologyUsed": [
        "Android Studio",
        "Android Virtual Devices",
        "Java as Backend Language",
        "XML as Front end Language",
        "Firebase Authentication",
        "Firebase DataBase",
        "Firebase Storage",
        "Google Maps SDK"
      ],
      "ProjectSignificance": [
        "Ease in sorting out hostel.",
        "Time saving application.",
        "Hostel categorization based on budget and facilities",
        "User can access all details of hostel with a single click"
      ],
      "images": [
        "https://thumbs.dreamstime.com/b/beds-hostel-affordable-housing-36997317.jpg",
        "https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://res.cloudinary.com/hostelling-internation/image/upload/t_hostel_carousel/f_auto,q_auto/v1565973406/kwunkr44mtjdrqrzz3s7.jpg"
      ],
      "Problem Description":
          "Students from far flung areas studying in colleges/ universities in the city face sole problems in searching suitable hostels for their stay due to lack of information and due to shortage of time because of their tight academic schedule. Students look for an economic as well as nearest hostel to their institutes in order to commute easily and save time."
    }
  },
  {
    "Project": {
      "ProjectID": 6,
      "ProjectName": "Simple Calculator",
      "ProjectDesc":
          "An app named Hostel locator is created for the purpose to help the students to find the hostels nearby. This app tracks the user's current location and shows all the hostels nearby on the map. This also has an option for the owners of the hostels to add their hostel. (Update and delete). The students also can chat with the owners of the hostels with an easy and simple interface. The app is using firebase authentication, Real-Time Database, and Storage. the app is under development and more features can be added soon. E.g hostels categorization based on male and female, online booking, payment, etc",
      "ProjectStartDate": "2020",
      "ProjectType": "FYP",
      "ProjectAim":
          "“To Design an android based mobile application for students to find there accommodation easily in the city”",
      "ToolsAndTechnologyUsed": [
        "Android Studio",
        "Android Virtual Devices",
        "Java as Backend Language",
        "XML as Front end Language",
        "Firebase Authentication",
        "Firebase DataBase",
        "Firebase Storage",
        "Google Maps SDK"
      ],
      "ProjectSignificance": [
        "Ease in sorting out hostel.",
        "Time saving application.",
        "Hostel categorization based on budget and facilities",
        "User can access all details of hostel with a single click"
      ],
      "images": [
        "https://thumbs.dreamstime.com/b/beds-hostel-affordable-housing-36997317.jpg",
        "https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://res.cloudinary.com/hostelling-internation/image/upload/t_hostel_carousel/f_auto,q_auto/v1565973406/kwunkr44mtjdrqrzz3s7.jpg"
      ],
      "Problem Description":
          "Students from far flung areas studying in colleges/ universities in the city face sole problems in searching suitable hostels for their stay due to lack of information and due to shortage of time because of their tight academic schedule. Students look for an economic as well as nearest hostel to their institutes in order to commute easily and save time."
    }
  },
  {
    "Project": {
      "ProjectID": 7,
      "ProjectName": "BMI Calculator",
      "ProjectDesc":
          "An app named Hostel locator is created for the purpose to help the students to find the hostels nearby. This app tracks the user's current location and shows all the hostels nearby on the map. This also has an option for the owners of the hostels to add their hostel. (Update and delete). The students also can chat with the owners of the hostels with an easy and simple interface. The app is using firebase authentication, Real-Time Database, and Storage. the app is under development and more features can be added soon. E.g hostels categorization based on male and female, online booking, payment, etc",
      "ProjectStartDate": "2020",
      "ProjectType": "FYP",
      "ProjectAim":
          "“To Design an android based mobile application for students to find there accommodation easily in the city”",
      "ToolsAndTechnologyUsed": [
        "Android Studio",
        "Android Virtual Devices",
        "Java as Backend Language",
        "XML as Front end Language",
        "Firebase Authentication",
        "Firebase DataBase",
        "Firebase Storage",
        "Google Maps SDK"
      ],
      "ProjectSignificance": [
        "Ease in sorting out hostel.",
        "Time saving application.",
        "Hostel categorization based on budget and facilities",
        "User can access all details of hostel with a single click"
      ],
      "images": [
        "https://thumbs.dreamstime.com/b/beds-hostel-affordable-housing-36997317.jpg",
        "https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://res.cloudinary.com/hostelling-internation/image/upload/t_hostel_carousel/f_auto,q_auto/v1565973406/kwunkr44mtjdrqrzz3s7.jpg"
      ],
      "Problem Description":
          "Students from far flung areas studying in colleges/ universities in the city face sole problems in searching suitable hostels for their stay due to lack of information and due to shortage of time because of their tight academic schedule. Students look for an economic as well as nearest hostel to their institutes in order to commute easily and save time."
    }
  },
  {
    "Project": {
      "ProjectID": 8,
      "ProjectName": "Country House",
      "ProjectDesc":
          "An app named Hostel locator is created for the purpose to help the students to find the hostels nearby. This app tracks the user's current location and shows all the hostels nearby on the map. This also has an option for the owners of the hostels to add their hostel. (Update and delete). The students also can chat with the owners of the hostels with an easy and simple interface. The app is using firebase authentication, Real-Time Database, and Storage. the app is under development and more features can be added soon. E.g hostels categorization based on male and female, online booking, payment, etc",
      "ProjectStartDate": "2020",
      "ProjectType": "FYP",
      "ProjectAim":
          "“To Design an android based mobile application for students to find there accommodation easily in the city”",
      "ToolsAndTechnologyUsed": [
        "Android Studio",
        "Android Virtual Devices",
        "Java as Backend Language",
        "XML as Front end Language",
        "Firebase Authentication",
        "Firebase DataBase",
        "Firebase Storage",
        "Google Maps SDK"
      ],
      "ProjectSignificance": [
        "Ease in sorting out hostel.",
        "Time saving application.",
        "Hostel categorization based on budget and facilities",
        "User can access all details of hostel with a single click"
      ],
      "images": [
        "https://thumbs.dreamstime.com/b/beds-hostel-affordable-housing-36997317.jpg",
        "https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://res.cloudinary.com/hostelling-internation/image/upload/t_hostel_carousel/f_auto,q_auto/v1565973406/kwunkr44mtjdrqrzz3s7.jpg"
      ],
      "Problem Description":
          "Students from far flung areas studying in colleges/ universities in the city face sole problems in searching suitable hostels for their stay due to lack of information and due to shortage of time because of their tight academic schedule. Students look for an economic as well as nearest hostel to their institutes in order to commute easily and save time."
    }
  },
  {
    "Project": {
      "ProjectID": 9,
      "ProjectName": "Pocket Recipe",
      "ProjectDesc":
          "An app named Hostel locator is created for the purpose to help the students to find the hostels nearby. This app tracks the user's current location and shows all the hostels nearby on the map. This also has an option for the owners of the hostels to add their hostel. (Update and delete). The students also can chat with the owners of the hostels with an easy and simple interface. The app is using firebase authentication, Real-Time Database, and Storage. the app is under development and more features can be added soon. E.g hostels categorization based on male and female, online booking, payment, etc",
      "ProjectStartDate": "2020",
      "ProjectType": "FYP",
      "ProjectAim":
          "“To Design an android based mobile application for students to find there accommodation easily in the city”",
      "ToolsAndTechnologyUsed": [
        "Android Studio",
        "Android Virtual Devices",
        "Java as Backend Language",
        "XML as Front end Language",
        "Firebase Authentication",
        "Firebase DataBase",
        "Firebase Storage",
        "Google Maps SDK"
      ],
      "ProjectSignificance": [
        "Ease in sorting out hostel.",
        "Time saving application.",
        "Hostel categorization based on budget and facilities",
        "User can access all details of hostel with a single click"
      ],
      "images": [
        "https://thumbs.dreamstime.com/b/beds-hostel-affordable-housing-36997317.jpg",
        "https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://res.cloudinary.com/hostelling-internation/image/upload/t_hostel_carousel/f_auto,q_auto/v1565973406/kwunkr44mtjdrqrzz3s7.jpg"
      ],
      "Problem Description":
          "Students from far flung areas studying in colleges/ universities in the city face sole problems in searching suitable hostels for their stay due to lack of information and due to shortage of time because of their tight academic schedule. Students look for an economic as well as nearest hostel to their institutes in order to commute easily and save time."
    }
  }
];
