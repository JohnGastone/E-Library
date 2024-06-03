// ignore_for_file: prefer_const_constructors

import 'package:elearning/models/courseCard_model.dart';
import 'package:elearning/pages/coursePage.dart';
import 'package:elearning/pages/enrolledCourses.dart';
import 'package:elearning/pages/studentProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CoursecardModel> displayCsCourses =
      List.from(CourseCardCsList.displayCsCourses);
  List<CoursecardModel> displayBsCourses =
      List.from(CourseCardBsList.displayBsCourses);

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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 25, top: 30),
                  child: Card(
                    color: const Color.fromARGB(255, 138, 156, 165),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Department of Computer Science",
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
                                    displayCsCourses[index].courseSessions!,
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
                        "Department of Business Studies",
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
                                    displayBsCourses[index].courseSessions!,
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
                        "Department of Humanities",
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
                                    displayCsCourses[index].courseSessions!,
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
            )
          ],
        ),
      ),
    );
  }
}
