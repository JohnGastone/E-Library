// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:elearning/pages/homePage.dart';
import 'package:elearning/pages/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class WavePainter extends CustomPainter {
  final double animationValue; // Animation value to control the wave height

  WavePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paintDeepBlue = Paint()
      ..color = Color.fromARGB(255, 16, 53, 117) // Deep blue color for the wave
      ..style = PaintingStyle.fill; // Filling the wave

    final pathDeepBlue = Path();
    pathDeepBlue.moveTo(0, size.height);
    pathDeepBlue.lineTo(0, size.height * 0.6); // Starting point for the wave

    for (var i = 0; i < size.width; i++) {
      final x = i.toDouble();
      final y = size.height * 0.56 +
          animationValue *
              30 *
              sin((i / size.width) * 3 * pi); // Calculate wave shape
      pathDeepBlue.lineTo(x, y); // Define wave path
    }

    pathDeepBlue.lineTo(size.width, size.height); // Complete the wave path
    pathDeepBlue.close();

    canvas.drawPath(pathDeepBlue, paintDeepBlue); // Draw the deep blue wave
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Repaint the wave continuously
  }
}

class WaveAnimation extends StatefulWidget {
  @override
  _WaveAnimationState createState() => _WaveAnimationState();
}

class _WaveAnimationState extends State<WaveAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, // Synchronize animation with this widget
      duration: Duration(seconds: 2), // Animation duration
    )..repeat(reverse: true); // Repeat the animation back and forth
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context)
                  .size
                  .height), // Set the size of the custom paint
          painter: WavePainter(
              _controller.value), // Use the WavePainter to paint the wave
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the animation controller
    super.dispose();
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WaveAnimation(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: GoogleFonts.mulish(
                      fontSize: 35, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                Text(
                  "Back",
                  style: GoogleFonts.mulish(
                      fontSize: 35, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "naheed255@gmail.com",
                      hintStyle: GoogleFonts.mulish(fontSize: 18),
                      labelStyle: GoogleFonts.mulish(fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextField(
                    obscureText: !isVisible,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.remove_red_eye)),
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                      ),
                      hintText: "Password",
                      hintStyle: GoogleFonts.mulish(fontSize: 18),
                      labelStyle: GoogleFonts.mulish(fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AvailableCourses(
                                              isDarkTheme: true,
                                              onThemeChanged: (bool value) {},
                                            )));
                              },
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 85, right: 20),
                  child: Row(
                    children: [
                      Text(
                        "New User?",
                        style: GoogleFonts.mulish(
                            fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(width: 30),
                      InkWell(
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.mulish(
                              fontSize: 18,
                              color: Colors.blueAccent,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          })
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
