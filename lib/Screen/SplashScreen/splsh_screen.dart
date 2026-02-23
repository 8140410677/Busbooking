import 'dart:async';

import 'package:busbookingapp/Screen/OnBodyScreen/OnBodyMain.dart';
import 'package:busbookingapp/utils/LoadingText.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBodyMain()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/image/splashbg.png", fit: BoxFit.cover),
          ),

          Align(
            alignment: Alignment(0, -0.80),
            child: Image.asset(
              "assets/image/buslogotop.png",
              width: width * 0.30,
            ),
          ),

          Align(
            alignment: const Alignment(0, -0.49),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "Bus Booking",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 0),

                Text(
                  "Plan your journey with ease",
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -10,
            left: -120,
            right: -170,
            top: 390,
            child: Image.asset(
              "assets/image/splashlogo.png",
              height: -10,
              fit: BoxFit.contain,
            ),
          ),

          Align(alignment: Alignment(0, 0.75), child: LoadingText()),
        ],
      ),
    );
  }
}
