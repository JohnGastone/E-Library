class CoursecardModel {
  String? courseImage;
  String? courseName;
  String? courseSessions;
  String? courseVideos;

  CoursecardModel(this.courseImage, this.courseName, this.courseSessions,
      this.courseVideos);
}

class CourseCardList {
  static List<CoursecardModel> getCourseCards = [];
}
