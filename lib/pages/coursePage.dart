// ignore_for_file: prefer_const_constructors

import 'package:elearning/models/courseModules_model.dart';
import 'package:elearning/pages/csPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coursepage extends StatefulWidget {
  const Coursepage({super.key});

  @override
  State<Coursepage> createState() => _CoursepagessState();
}

class _CoursepagessState extends State<Coursepage> {
  List<CoursemodulesModel> displayModules =
      List.from(CourseModulesList.displayModules);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 30,
              width: 80,
              child: FloatingActionButton(
                  child: Text(
                    "Go Back",
                    style: GoogleFonts.spaceMono(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => CsPage()));
                  }),
            ),
            Text(
              "Corporate Finance",
              style: GoogleFonts.spaceMono(
                  fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Uploaded Materials",
                    style: GoogleFonts.spaceMono(
                        fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 20),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: displayModules.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 15),
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 110, 140, 163)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(CupertinoIcons.circle),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      displayModules[index].moduleName!,
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(Icons.file_download),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
