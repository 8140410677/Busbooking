import 'dart:async';

import 'package:flutter/material.dart';

class LoadingText extends StatefulWidget {
  const LoadingText({super.key});

  @override
  State<LoadingText> createState() => _LoadingTextState();
}

class _LoadingTextState extends State<LoadingText> {
  int dotCount = 0;
  Timer? dotCounter;

  @override
  void initState() {
    super.initState();
    dotCounter = Timer.periodic(Duration(milliseconds: 500), (_) {
      setState(() {
        dotCount = (dotCount + 1) % 4;
      });
    });
  }

  @override
  void dispose() {
    dotCounter?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "Loading${"." * dotCount}",
      style: const TextStyle(
        fontSize: 18,
        color: Color(0xff6B7AA8),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
