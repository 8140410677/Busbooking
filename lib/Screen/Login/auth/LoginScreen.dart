import 'package:busbookingapp/Screen/Login/auth/SignUpScreen.dart';
import 'package:busbookingapp/utils/Facebook.dart';
import 'package:busbookingapp/utils/Google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset("assets/image/login.png", fit: BoxFit.cover),
          ),

          // Ahiya Thi Top nu Handle Thase Image + Title + SubTitle
          Positioned(
            top: -70.h,
            left: 0,
            right: 0,
            child: Image.asset("assets/image/buslogotop.png", height: 290.h),
          ),

          Positioned(
            top: 100.h,
            left: 0.w,
            right: 0.w,
            child: Column(
              children: [
                Text(
                  "Welcome Back!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Login to Your Account",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: GoogleFonts.radioCanada(
                    fontSize: 17.sp,
                    color: Colors.white.withOpacity(0.9),
                    height: 0.9,
                  ),
                ),
              ],
            ),
          ),

          // TextFiled Ka Code Chhe Ahiya Thi TextFiled Code Handle Thase
          Positioned(
            top: 200.h,
            left: 25.w,
            right: 25.w,
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 15.w),
                      child: Icon(Icons.email_outlined, size: 25),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 19),
                  ),
                ),

                SizedBox(height: 20),

                TextFormField(
                  controller: passwordController,
                  obscureText: isPasswordHidden,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
                      child: Icon(Icons.lock_outline),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordHidden
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          isPasswordHidden = !isPasswordHidden;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                  ),
                ),
              ],
            ),
          ),

          // Ahiya Thi Forgot Password Show Thase
          Positioned(
            top: 333.h,
            left: 215.w,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.roboto(fontSize: 14, color: Colors.black38),
              ),
            ),
          ),

          // Login Button Ahiya Thi Show Thase
          Positioned(
            top: 380.h,
            left: 25.w,
            right: 25.w,
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
                elevation: 0,
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
                  height: 46.h,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          //or Continue With Button
          Positioned(
            top: 435.h,
            left: 25.w,
            right: 25.w,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1.h,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Text(
                    "or Continue With",
                    style: GoogleFonts.lato(
                      fontSize: 12.sp,
                      color: Colors.black54, // darker text
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    height: 1.h,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Google And Facebook Button
          Positioned(
            top: 470.h,
            right: 25.w,
            left: 25.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Google(), FaceBook()],
            ),
          ),

          Positioned(
            top: 735.h,
            left: 35.w,
            right: 25.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an Account? ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey.shade600,
                  ),
                ),

                TextButton(
                  onPressed: () {  
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xFFFF7043),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

