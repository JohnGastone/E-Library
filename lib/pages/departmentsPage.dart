// ignore_for_file: prefer_const_constructors

import 'package:elearning/pages/bsPage.dart';
import 'package:elearning/pages/csPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'enrolledCourses.dart';
import 'hsPage.dart';
import 'studentProfile.dart';

class Departmentspage extends StatefulWidget {
  const Departmentspage({super.key});

  @override
  State<Departmentspage> createState() => _DepartmentspageState();
}

class _DepartmentspageState extends State<Departmentspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Choose the Department you want to surf its courses",
                  style: GoogleFonts.spaceMono(fontSize: 20),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      color: Colors.white24,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.book_circle),
                                Text(
                                  "Department of Informatics",
                                  style: GoogleFonts.spaceMono(fontSize: 16),
                                )
                              ],
                            ),
                            Image.asset(
                              "./assets/images/computer.png",
                              height: 30,
                              width: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CsPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      color: Colors.white24,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.book_circle),
                                Text(
                                  "Department of Finance Studies",
                                  style: GoogleFonts.spaceMono(fontSize: 16),
                                )
                              ],
                            ),
                            Image.asset(
                              "./assets/images/digital-wallet.png",
                              height: 30,
                              width: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BsPage()));
                    },
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Card(
                      color: Colors.white24,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.book_circle),
                                Text(
                                  "Department of Humanity",
                                  style: GoogleFonts.spaceMono(fontSize: 16),
                                )
                              ],
                            ),
                            Image.asset(
                              "./assets/images/help.png",
                              height: 30,
                              width: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HsPage()));
                    },
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white24,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.book_circle),
                              Text(
                                "Department of Social Studies",
                                style: GoogleFonts.spaceMono(fontSize: 16),
                              )
                            ],
                          ),
                          Image.asset(
                            "./assets/images/social.png",
                            height: 30,
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white24,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.book_circle),
                              Text(
                                "Department of Fine  Arts",
                                style: GoogleFonts.spaceMono(fontSize: 16),
                              )
                            ],
                          ),
                          Image.asset(
                            "./assets/images/pallete.png",
                            height: 30,
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 250)
            ],
          ),
        ),
      ),
    );
  }
}
