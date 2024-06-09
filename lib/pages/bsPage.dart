// ignore_for_file: prefer_const_constructors

import 'package:elearning/models/courseCard_model.dart';
import 'package:elearning/pages/coursePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BsPage extends StatefulWidget {
  const BsPage({
    super.key,
  });

  @override
  State<BsPage> createState() => _BsPageState();
}

class _BsPageState extends State<BsPage> {
  List<CoursecardModel> displayBsCourses =
      List.from(CourseCardBsList.displayBsCourses);

  void updateList(String value) {
    setState(() {
      displayBsCourses = CourseCardHsList.displayHsCourses
          .where((element) =>
              element.courseName!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    autocorrect: EditableText.debugDeterministicCursor,
                    onChanged: (value) => updateList(value),
                    style: GoogleFonts.spaceMono(
                        fontSize: 18, color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Browse your courses",
                        hintStyle: GoogleFonts.spaceMono(color: Colors.white),
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 25, top: 30),
                  child: Card(
                    color: const Color.fromARGB(255, 138, 156, 165),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Department of Humanities and Social Studies",
                        style: GoogleFonts.mulish(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: displayBsCourses.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12),
                      itemBuilder: (context, index) => InkWell(
                            child: Container(
                              height: 230,
                              width: 80,
                              decoration: BoxDecoration(
                                color: displayBsCourses[index].courseColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  Container(
                                    height: 76,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: CircleAvatar(
                                      child: Image.asset(
                                        displayBsCourses[index].courseImage!,
                                        height: 40,
                                        width: 40,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    displayBsCourses[index].courseName!,
                                    style: GoogleFonts.mulish(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    displayBsCourses[index].courseSessions!,
                                    style: GoogleFonts.mulish(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  Text(
                                    displayBsCourses[index].courseVideos!,
                                    style: GoogleFonts.mulish(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursepage()));
                            },
                          )),
                )
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
