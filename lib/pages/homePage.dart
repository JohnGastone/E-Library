// ignore_for_file: prefer_const_constructors

import 'package:elearning/pages/enrolledCourses.dart';
import 'package:elearning/pages/studentProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(
        isDarkTheme: _isDarkTheme,
        onThemeChanged: (bool value) {
          setState(() {
            _isDarkTheme = value;
          });
        },
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final bool isDarkTheme;
  final ValueChanged<bool> onThemeChanged;

  const HomePage(
      {super.key, required this.isDarkTheme, required this.onThemeChanged});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages(
          bool isDarkTheme, ValueChanged<bool> onThemeChanged) =>
      <Widget>[
        AvailableCourses(
            isDarkTheme: isDarkTheme, onThemeChanged: onThemeChanged),
        EnrolledCourses(),
        StudentProfile(),
      ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages(widget.isDarkTheme, widget.onThemeChanged)[_selectedIndex],
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: BottomNavigationBar(
                selectedLabelStyle: GoogleFonts.spaceMono(
                    fontSize: 15, fontWeight: FontWeight.bold),
                unselectedLabelStyle: GoogleFonts.spaceMono(
                    fontSize: 15, fontWeight: FontWeight.bold),
                backgroundColor: Colors.white24,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.explore),
                    label: 'Courses',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.restaurant),
                    label: 'Enrolled',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.green,
                onTap: _onItemTapped,
                elevation: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AvailableCourses extends StatelessWidget {
  final bool isDarkTheme;
  final ValueChanged<bool> onThemeChanged;

  const AvailableCourses(
      {super.key, required this.isDarkTheme, required this.onThemeChanged});

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
                              Row(
                                children: [
                                  Switch(
                                    value: isDarkTheme,
                                    onChanged: onThemeChanged,
                                    activeColor: Colors.orangeAccent,
                                  ),
                                  Text(
                                    "Switch App Theme",
                                    style: GoogleFonts.mulish(
                                        color: Colors.orangeAccent),
                                  )
                                ],
                              ),
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
            Padding(
              padding: const EdgeInsets.only(right: 95, top: 30),
              child: Text(
                "Courses Available",
                style: GoogleFonts.mulish(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      CourseCard(
                        imagePath: "./assets/images/vector.png",
                        title: "Graphics Design",
                        sessions: "20 Sessions",
                        videos: "10 Videos",
                        color: Colors.greenAccent,
                      ),
                      SizedBox(width: 20),
                      CourseCard(
                        imagePath: "./assets/images/designer.png",
                        title: "UI/UX Design",
                        sessions: "20 Sessions",
                        videos: "5 Videos",
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CourseCard(
                        imagePath: "./assets/images/code.png",
                        title: "Programming",
                        sessions: "30 Sessions",
                        videos: "20 Videos",
                        color: Colors.amberAccent,
                      ),
                      SizedBox(width: 20),
                      CourseCard(
                        imagePath: "./assets/images/testing.png",
                        title: "Testing",
                        sessions: "10 Sessions",
                        videos: "5 Videos",
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CourseCard(
                        imagePath: "./assets/images/maths.png",
                        title: "Computing Maths",
                        sessions: "20 Sessions",
                        videos: "10 Videos",
                        color: Colors.greenAccent,
                      ),
                      SizedBox(width: 20),
                      CourseCard(
                        imagePath: "./assets/images/neural.png",
                        title: "Algorithms",
                        sessions: "30 Sessions",
                        videos: "30 Videos",
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String sessions;
  final String videos;
  final Color color;

  const CourseCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.sessions,
    required this.videos,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: CircleAvatar(
              backgroundColor: color,
              child: Image.asset(
                imagePath,
                height: 50,
                width: 50,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style:
                GoogleFonts.mulish(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            sessions,
            style: GoogleFonts.mulish(fontSize: 18, color: Colors.white),
          ),
          Text(
            videos,
            style: GoogleFonts.mulish(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
