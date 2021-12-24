import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class Dotted_border extends StatelessWidget {
  const Dotted_border({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: [8, 4],
      strokeWidth: 1.3,
      color: Colors.black.withOpacity(0.3),
      radius: Radius.circular(5.r),
      borderType: BorderType.RRect,
      child: Container(
        width: 157.r,
        height: 44.r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0.r),
          color: HexColor("#F7F7F7"),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/images/coolicon.png",
                width: 24.r,
                height: 16.r,
              )),
        ),
      ),
    );
  }
}

class Dotted_borderExpanded extends StatelessWidget {
  const Dotted_borderExpanded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: [8, 4],
      strokeWidth: 1.3,
      color: Colors.black.withOpacity(0.3),
      radius: Radius.circular(5.r),
      borderType: BorderType.RRect,
      child: Container(
        height: 44.r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0.r),
          color: HexColor("#F7F7F7"),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/images/coolicon.png",
                width: 24.r,
                height: 16.r,
              )),
        ),
      ),
    );
  }
}
