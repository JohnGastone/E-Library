class CoursecardModel {
  String? courseImage;
  String? courseName;
  String? courseSessions;
  String? courseVideos;

  CoursecardModel(this.courseImage, this.courseName, this.courseSessions,
      this.courseVideos);
}

class CourseCardList {
  static List<CoursecardModel> getCourseCards = [
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
}
