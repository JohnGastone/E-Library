// ignore_for_file: prefer_const_constructors

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
              )
            ],
          ),
        ),
      ),
    );
  }
}
