import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Login Screen"),
      ),
      body: Stack(
        children: [
          FaIcon(FontAwesomeIcons.whatsapp,color: Colors.blue,),
          FaIcon(FontAwesomeIcons.youtube,color: Colors.black,)
        ],
      ),
    );
  }
}
