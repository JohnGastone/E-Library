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
        "UI/UX Design", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.amberAccent, "assets/images/code.png", "Programming",
        "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.redAccent, "assets/images/testing.png", "Testing",
        "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.greenAccent, "assets/images/maths.png",
        "Computing Maths", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/neural.png", "Algorithms",
        "100 Sessions", "100 Videos"),
  ];

  static List<CoursecardModel> displayCsCourses = List.from(getCsCourseCards);
}

class CourseCardBsList {
  static List<CoursecardModel> getBsCourseCards = [
    CoursecardModel(Colors.greenAccent, "assets/images/organizing.png",
        "Course 1", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/location.png", "Course 2",
        "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.amberAccent, "assets/images/accounting.png",
        "Course 3", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.redAccent, "assets/images/digital-wallet.png",
        "Course 4", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.greenAccent, "assets/images/analytics.png",
        "Course 3", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/teamwork.png", "Course 4",
        "100 Sessions", "100 Videos"),
  ];

  static List<CoursecardModel> displayBsCourses = List.from(getBsCourseCards);
}

class CourseCardHsList {
  static List<CoursecardModel> getHsCourseCards = [
    CoursecardModel(Colors.greenAccent, "assets/images/public-relations.png",
        "Course 1", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/urban-planning.png",
        "Course 2", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.amberAccent, "assets/images/network.png", "Course 3",
        "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.redAccent, "assets/images/labour-law.png",
        "Course 4", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.greenAccent, "assets/images/business.png",
        "Course 3", "100 Sessions", "100 Videos"),
    CoursecardModel(Colors.blueAccent, "assets/images/help.png", "Course 4",
        "100 Sessions", "100 Videos"),
  ];

  static List<CoursecardModel> displayHsCourses = List.from(getHsCourseCards);
}
