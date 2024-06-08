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
                        MaterialPageRoute(builder: (context) => HomePage()));
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
                  Container(
                    height: 80,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
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
