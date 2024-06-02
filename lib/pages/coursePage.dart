// ignore_for_file: prefer_const_constructors

import 'package:elearning/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coursepage extends StatefulWidget {
  const Coursepage({super.key});

  @override
  State<Coursepage> createState() => _CoursepagessState();
}

class _CoursepagessState extends State<Coursepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white24,
        title: Row(
          children: [
            FloatingActionButton(
                child: Text(
                  "Go Back",
                  style: GoogleFonts.spaceMono(fontSize: 15),
                ),
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AvailableCourses(
                                isDarkTheme: false,
                                onThemeChanged: (value) {},
                              )));
                })
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
