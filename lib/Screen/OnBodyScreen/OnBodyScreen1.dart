import 'dart:ui';

import 'package:busbookingapp/Screen/Login/auth/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onbodyscreen1 extends StatelessWidget {
  const Onbodyscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/image/onbodyscreen1.png",
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Text(
                    "Find Your Bus",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Search buses between cities easily",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.9),
                      height: 1.4,
                    ),
                  ),

                ],
              ),
            ),
          ),

          Positioned(
            bottom: -10,
            left: -250,
            right: -250,
            top: 400,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 1),
              child: Image.asset(
                "assets/image/splashlogo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 25,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Color(0xff4A6CF7),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
