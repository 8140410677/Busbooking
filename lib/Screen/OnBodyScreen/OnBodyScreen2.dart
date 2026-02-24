import 'package:busbookingapp/Screen/Login/auth/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onBodyScreen2 extends StatefulWidget {
  const onBodyScreen2({super.key});

  @override
  State<onBodyScreen2> createState() => _onBodyScreen2State();
}

class _onBodyScreen2State extends State<onBodyScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/image/onbodyscreen2.png",
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  "Choose Your Seat",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 2),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),

                Text(
                  "Select your preferred seat\nin seconds",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.9),
                    height: 1.4,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.20),
                        offset: Offset(0, 1),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ],
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
