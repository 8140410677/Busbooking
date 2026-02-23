import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:busbookingapp/Screen/Login/auth/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onbodyscreen3 extends StatefulWidget {
  const onbodyscreen3({super.key});

  @override
  State<onbodyscreen3> createState() => _onbodyscreen3State();
}

class _onbodyscreen3State extends State<onbodyscreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/image/mainbg.png", fit: BoxFit.cover),
          ),

          Positioned.fill(
            child: Image.asset(
              "assets/image/onbodyscreen3.png",
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 100,
            left: 50,
            right: 40,
            child: Column(
              children: [
                Text(
                  "Book Instantly",
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

                SizedBox(height: 10),

                Text(
                  "Confirm Your Booking Quickly and Securely",
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
            bottom: 42,
            left: 40,
            right: 40,
            child: SizedBox(
              height: 55,
              child: MouseRegion(
                // onEnter: (_) {
                //   print("Run Method");
                // },
                // onExit: (_) {},
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFA726), Color(0xFFFF7043)],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          BounceAnimatedText(
                            "Get Started",
                            textStyle: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
