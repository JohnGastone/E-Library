class CoursemodulesUploadModel {
  String? moduleName;

  CoursemodulesUploadModel(this.moduleName);
}

class CourseModulesUploadList {
  static List<CoursemodulesUploadModel> getModules = [
    CoursemodulesUploadModel("Introduction"),
    CoursemodulesUploadModel("Corporate World"),
    CoursemodulesUploadModel("Financial Maths"),
    CoursemodulesUploadModel("Investments Basics"),
  ];

  static List<CoursemodulesUploadModel> displayModules =
      List.from(CourseModulesUploadList.getModules);
}
