// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LecturerPrograms extends StatefulWidget {
  const LecturerPrograms({super.key});

  @override
  State<LecturerPrograms> createState() => _LecturerProgramsState();
}

class _LecturerProgramsState extends State<LecturerPrograms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "My Programs",
                style: GoogleFonts.spaceMono(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
