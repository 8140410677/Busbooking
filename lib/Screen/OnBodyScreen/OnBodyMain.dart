import 'package:busbookingapp/Screen/OnBodyScreen/OnBodyScreen1.dart';
import 'package:busbookingapp/Screen/OnBodyScreen/OnBodyScreen2.dart';
import 'package:busbookingapp/Screen/OnBodyScreen/OnBodyScreen3.dart';
import 'package:flutter/material.dart';

class OnBodyMain extends StatefulWidget {
  const OnBodyMain({super.key});

  @override
  State<OnBodyMain> createState() => _OnBodyMainState();
}

class _OnBodyMainState extends State<OnBodyMain> {
  final PageController controller = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },

            children: [Onbodyscreen1(), onBodyScreen2(), onbodyscreen3()],
          ),

          Positioned(
            bottom: 120,
            left: 0,
            right: 0,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: currentIndex == index ? 20 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: currentIndex == index
                        ? const Color(0xFFFF7043)
                        : Colors.grey.shade300,

                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
