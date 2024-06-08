class CoursemodulesModel {
  String? moduleName;

  CoursemodulesModel(this.moduleName);
}

class CourseModulesList {
  static List<CoursemodulesModel> getModules = [
    CoursemodulesModel("Module 1"),
    CoursemodulesModel("Module 2"),
    CoursemodulesModel("Module 3"),
    CoursemodulesModel("Module 4"),
    CoursemodulesModel("Module 5"),
    CoursemodulesModel("Module 6"),
    CoursemodulesModel("Module 7"),
    CoursemodulesModel("Module 8"),
    CoursemodulesModel("Module 9"),
    CoursemodulesModel("Module 10"),
    CoursemodulesModel("Module 11"),
    CoursemodulesModel("Module 12"),
    CoursemodulesModel("Module 13"),
    CoursemodulesModel("Module 14"),
    CoursemodulesModel("Module 15"),
    CoursemodulesModel("Module 16"),
    CoursemodulesModel("Module 17"),
    CoursemodulesModel("Module 18"),
    CoursemodulesModel("Module 19"),
    CoursemodulesModel("Module 20"),
  ];

  static List<CoursemodulesModel> displayModules =
      List.from(CourseModulesList.getModules);
}
