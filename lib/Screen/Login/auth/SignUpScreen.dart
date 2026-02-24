import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:busbookingapp/Screen/Login/auth/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/image/signup.png", fit: BoxFit.cover),
          ),

          // Ahiya Thi Top nu Handle Thase Image + Title + SubTitle
          Positioned(
            top: -30.h,
            left: 0,
            right: 0,
            child: Image.asset("assets/image/buslogotop.png", height: 290.h),
          ),

          Positioned(
            top: 150.h,
            left: 0.w,
            right: 0.w,
            child: Column(
              children: [
                Text(
                  "SignUp",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 220.h,
            left: 20.w,
            right: 20.w,
            child: Center(
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Container(
                  width: 350.w,
                  height: 450.h,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 17,
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsetsGeometry.symmetric(
                                horizontal: 15.w,
                              ),
                              child: Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 17),
                          ),
                        ),
                      ),

                      SizedBox(height: 15.h),

                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(horizontal: 12.w),
                        child: TextField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 17,
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Icon(
                                Icons.email,
                                size: 30,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 17.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: TextField(
                          // controller: phonecontroller(),
                          decoration: InputDecoration(
                            hintText: "Phone",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 17,
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Icon(
                                Icons.phone_android,
                                size: 30,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 17,
                            ),

                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey.shade700,
                              size: 30,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.grey.shade700,
                              size: 30,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
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
                            child: PhysicalModel(
                              elevation: 50,
                              color: Colors.orange,
                              shadowColor: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(30),
                              clipBehavior: Clip.antiAlias,
                              child: ElevatedButton(
                                onPressed: () {
                                  print("button Click");
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                ),
                                child: Ink(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFFFA726),
                                        Color(0xFFFF7043),
                                      ],
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
                      ),
                    ],
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
