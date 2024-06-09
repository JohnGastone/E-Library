// ignore_for_file: prefer_const_constructors

import 'package:elearning/models/courseCard_model.dart';
import 'package:elearning/pages/enrolledCourses.dart';
import 'package:elearning/pages/moduleUploadPage.dart';
import 'package:elearning/pages/studentProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LecturerPrograms extends StatefulWidget {
  const LecturerPrograms({
    super.key,
  });

  @override
  State<LecturerPrograms> createState() => _LecturerProgramsState();
}

class _LecturerProgramsState extends State<LecturerPrograms> {
  List<CoursecardModel> displayCsCourses =
      List.from(CourseCardCsList.displayCsCourses);

  void updateList(String value) {
    setState(() {
      displayCsCourses = CourseCardCsList.displayCsCourses
          .where((element) =>
              element.courseName!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              "./assets/images/idea.png",
              height: 35,
              width: 35,
            ),
            SizedBox(width: 5),
            Text(
              "E-Library",
              style: GoogleFonts.mulish(color: Colors.white),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.menu_sharp,
                color: Colors.orangeAccent,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Center(
                          child: Text(
                            "Menu",
                            style: GoogleFonts.mulish(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        content: SizedBox(
                          height: 200,
                          child: Column(
                            children: [
                              InkWell(
                                child: ListTile(
                                  leading: Icon(CupertinoIcons.book),
                                  title: Text(
                                    "Enrolled Courses",
                                    style: GoogleFonts.mulish(
                                        color: Colors.orangeAccent),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EnrolledCourses()));
                                },
                              ),
                              InkWell(
                                  child: ListTile(
                                    leading: Icon(Icons.person),
                                    title: Text(
                                      "Profile",
                                      style: GoogleFonts.mulish(
                                          color: Colors.orangeAccent),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StudentProfile()));
                                  }),
                            ],
                          ),
                        ),
                        actions: [],
                      );
                    });
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 30,
                  width: 70,
                  child: FloatingActionButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "Back",
                      style: GoogleFonts.spaceMono(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
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
            Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: displayCsCourses.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12),
                      itemBuilder: (context, index) => InkWell(
                            child: Container(
                              height: 220,
                              width: 80,
                              decoration: BoxDecoration(
                                color: displayCsCourses[index].courseColor,
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
                                        displayCsCourses[index].courseImage!,
                                        height: 40,
                                        width: 40,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    displayCsCourses[index].courseName!,
                                    style: GoogleFonts.mulish(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    displayCsCourses[index].courseSessions!,
                                    style: GoogleFonts.mulish(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  Text(
                                    displayCsCourses[index].courseVideos!,
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
                                      builder: (context) =>
                                          Moduleuploadpage()));
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
