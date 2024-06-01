// ignore_for_file: prefer_const_constructors

import 'package:elearning/pages/loginPage.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 6, 39, 96),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "./assets/images/idea.png",
            height: 90,
            width: 90,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome",
            style: GoogleFonts.mulish(fontSize: 35, color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          Text("To",
              style: GoogleFonts.mulish(fontSize: 35, color: Colors.white)),
          SizedBox(
            height: 15,
          ),
          Text("E-Library",
              style: GoogleFonts.mulish(fontSize: 35, color: Colors.white)),
          SizedBox(
            height: 35,
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Log In",
                        style: GoogleFonts.mulish(fontSize: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 6, 39, 96),
                          child: Icon(Icons.arrow_forward_ios,
                              color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                      )
                    ],
                  ),
                )),
          ),
        ])));
  }
}