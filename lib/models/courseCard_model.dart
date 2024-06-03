class CoursecardModel {
  String? courseImage;
  String? courseName;
  String? courseSessions;
  String? courseVideos;

  CoursecardModel(this.courseImage, this.courseName, this.courseSessions,
      this.courseVideos);
}

class CourseCardCsList {
  static List<CoursecardModel> getCsCourseCards = [
    CoursecardModel(
        "assets/images/vector.png", "Course 1", "100 Sessions", "100 Videos"),
    CoursecardModel(
        "assets/images/designer.png", "Course 2", "100 Sessions", "100 Videos"),
    CoursecardModel(
        "assets/images/code.png", "Course 3", "100 Sessions", "100 Videos"),
    CoursecardModel(
        "assets/images/testing.png", "Course 4", "100 Sessions", "100 Videos"),
    CoursecardModel(
        "assets/images/maths.png", "Course 3", "100 Sessions", "100 Videos"),
    CoursecardModel(
        "assets/images/neural.png", "Course 4", "100 Sessions", "100 Videos"),
  ];

  static List<CoursecardModel> displayCsCourses = List.from(getCsCourseCards);
}

class CourseCardBsList {
  static List<CoursecardModel> getBsCourseCards = [
    CoursecardModel("assets/images/organizing.png", "Course 1", "100 Sessions",
        "100 Videos"),
    CoursecardModel(
        "assets/images/location.png", "Course 2", "100 Sessions", "100 Videos"),
    CoursecardModel("assets/images/accounting.png", "Course 3", "100 Sessions",
        "100 Videos"),
    CoursecardModel("assets/images/digital-wallet.png", "Course 4",
        "100 Sessions", "100 Videos"),
    CoursecardModel("assets/images/analytics.png", "Course 3", "100 Sessions",
        "100 Videos"),
    CoursecardModel(
        "assets/images/teamwork.png", "Course 4", "100 Sessions", "100 Videos"),
  ];

  static List<CoursecardModel> displayBsCourses = List.from(getBsCourseCards);
}

class CourseCardHsList {
  static List<CoursecardModel> getHsCourseCards = [
    CoursecardModel("assets/images/courses/course-1.jpg", "Course 1",
        "100 Sessions", "100 Videos"),
    CoursecardModel("assets/images/courses/course-2.jpg", "Course 2",
        "100 Sessions", "100 Videos"),
    CoursecardModel("assets/images/courses/course-3.jpg", "Course 3",
        "100 Sessions", "100 Videos"),
    CoursecardModel("assets/images/courses/course-4.jpg", "Course 4",
        "100 Sessions", "100 Videos"),
    CoursecardModel("assets/images/courses/course-3.jpg", "Course 3",
        "100 Sessions", "100 Videos"),
    CoursecardModel("assets/images/courses/course-4.jpg", "Course 4",
        "100 Sessions", "100 Videos"),
  ];

  static List<CoursecardModel> displayHsCourses = List.from(getHsCourseCards);
}
