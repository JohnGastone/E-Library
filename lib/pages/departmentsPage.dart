// ignore_for_file: prefer_const_constructors

import 'package:elearning/pages/csPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Departmentspage extends StatefulWidget {
  const Departmentspage({super.key});

  @override
  State<Departmentspage> createState() => _DepartmentspageState();
}

class _DepartmentspageState extends State<Departmentspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  "Department of Computer Studies",
                                  style: GoogleFonts.spaceMono(fontSize: 16),
                                )
                              ],
                            ),
                            Icon(
                              CupertinoIcons.device_laptop,
                              color: Colors.blueGrey,
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
                          Icon(
                            CupertinoIcons.device_laptop,
                            color: Colors.blueGrey,
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
                                "Department of Social Studies",
                                style: GoogleFonts.spaceMono(fontSize: 16),
                              )
                            ],
                          ),
                          Icon(
                            CupertinoIcons.device_laptop,
                            color: Colors.blueGrey,
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
                                "Department of Business Studies",
                                style: GoogleFonts.spaceMono(fontSize: 16),
                              )
                            ],
                          ),
                          Icon(
                            CupertinoIcons.device_laptop,
                            color: Colors.blueGrey,
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
                          Icon(
                            CupertinoIcons.device_laptop,
                            color: Colors.blueGrey,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
