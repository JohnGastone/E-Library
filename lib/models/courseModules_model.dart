class CoursemodulesModel {
  String? moduleName;

  CoursemodulesModel(this.moduleName);
}

class CourseModulesList {
  static List<CoursemodulesModel> getModules = [
    CoursemodulesModel("Introduction"),
    CoursemodulesModel("Corporate World"),
    CoursemodulesModel("Financial Maths"),
    CoursemodulesModel("Investments Basics"),
    CoursemodulesModel("Risk Management"),
    CoursemodulesModel("Capital Structure"),
    CoursemodulesModel("Market Analysis"),
    CoursemodulesModel("Debt Financing"),
    CoursemodulesModel("Equity Financing"),
    CoursemodulesModel("Valuation Techniques"),
    CoursemodulesModel("Dividend Policy"),
    CoursemodulesModel("Mergers Acquisitions"),
    CoursemodulesModel("Financial Statements"),
    CoursemodulesModel("Cost Management"),
    CoursemodulesModel("POrtfolio Theory"),
    CoursemodulesModel("Cash Flow"),
    CoursemodulesModel("Credit Analysis"),
    CoursemodulesModel("Budgetin Techniques"),
    CoursemodulesModel("Tax Planning"),
    CoursemodulesModel("Economic Environment"),
  ];

  static List<CoursemodulesModel> displayModules =
      List.from(CourseModulesList.getModules);
}
