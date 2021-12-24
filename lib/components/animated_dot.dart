import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class AnimatedDot extends StatelessWidget {
  const AnimatedDot({
    Key? key,
    required this.press,
    required this.isLock,
  }) : super(key: key);

  final VoidCallback press;
  final bool isLock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        switchInCurve: Curves.easeInOutBack,
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: Container(
          width: 20.r,
          height: 20.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 0.5,
              color: HexColor("#7D7F88").withOpacity(0.4),
            ),
          ),
          child: isLock
              ? Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 8.r,
                    height: 9.r,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: HexColor("#001833"),
                    ),
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}
