// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/courseUpload_model.dart';

class Moduleuploadpage extends StatefulWidget {
  const Moduleuploadpage({super.key});

  @override
  State<Moduleuploadpage> createState() => _ModuleuploadpageState();
}

class _ModuleuploadpageState extends State<Moduleuploadpage> {
  List<CoursemodulesUploadModel> displayModules =
      List.from(CourseModulesUploadList.displayModules);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Upload Resources",
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
                                      child: Icon(Icons.delete),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 40,
                    width: 140,
                    child: FloatingActionButton(
                        child: Text(
                          "Upload Resource",
                          style: GoogleFonts.spaceMono(fontSize: 15),
                        ),
                        onPressed: () {}),
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
