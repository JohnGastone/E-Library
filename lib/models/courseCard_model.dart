// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CoursecardModel {
  Color? courseColor;
  String? courseImage;
  String? courseName;
  String? courseSessions;
  String? courseVideos;

  CoursecardModel(this.courseColor, this.courseImage, this.courseName,
      this.courseSessions, this.courseVideos);
}

class CourseCardCsList {
  static List<CoursecardModel> getCsCourseCards = [
    CoursecardModel(Colors.greenAccent, "assets/images/vector.png",
        "Graphics Design", "20 Sessions", "10 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/designer.png",
        "UI/UX Design", "10 Sessions", "10 Videos"),
    CoursecardModel(Colors.amberAccent, "assets/images/code.png", "Programming",
        "30 Sessions", "20 Videos"),
    CoursecardModel(Colors.redAccent, "assets/images/testing.png", "Testing",
        "10 Sessions", "10 Videos"),
    CoursecardModel(Colors.greenAccent, "assets/images/maths.png",
        "Computing Maths", "10 Sessions", "10 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/neural.png", "Algorithms",
        "20 Sessions", "15 Videos"),
  ];

  static List<CoursecardModel> displayCsCourses = List.from(getCsCourseCards);
}

class CourseCardBsList {
  static List<CoursecardModel> getBsCourseCards = [
    CoursecardModel(Colors.greenAccent, "assets/images/organizing.png",
        "eCommerce", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/location.png",
        "Business IT", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.amberAccent, "assets/images/accounting.png",
        "Accounting", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.redAccent, "assets/images/digital-wallet.png",
        "Digital Finance", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.greenAccent, "assets/images/analytics.png",
        "Statistics", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/teamwork.png",
        "Corporate Finance", "15 Sessions", "10 Videos"),
  ];

  static List<CoursecardModel> displayBsCourses = List.from(getBsCourseCards);
}

class CourseCardHsList {
  static List<CoursecardModel> getHsCourseCards = [
    CoursecardModel(Colors.greenAccent, "assets/images/public-relations.png",
        "Course 1", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/urban-planning.png",
        "Urban Planning", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.amberAccent, "assets/images/network.png", "Course 3",
        "Labour Sociology", "100 Videos"),
    CoursecardModel(Colors.redAccent, "assets/images/labour-law.png",
        "Course 4", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.greenAccent, "assets/images/business.png",
        "Course 3", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/help.png", "Humanities",
        "100 Sessions", "100 Videos"),
  ];

  static List<CoursecardModel> displayHsCourses = List.from(getHsCourseCards);
}
