import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/constants/color.dart';

class ButtonSmall extends StatelessWidget {
  final String text;

  ButtonSmall(
    this.text, {
    Key? key,
    Color this.backgroundColor = Colors.transparent,
    Color this.textColor = kDefaultWhite,
  }) : super(key: key);

  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(horizontal: 5.0.r, vertical: 4.r),
          minimumSize: const Size(59.0, 22.0),
          shape: RoundedRectangleBorder(
              side: new BorderSide(color: kDefaultWhite, width: 0.7),
              borderRadius: BorderRadius.circular(2.0)),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 10.0.r,
              height: 20.0 / 10.0,
              color: textColor,
              letterSpacing: -0.3),
        ));
  }
}

Widget primaryButton(
    {required String text,
    Widget? prefix,
    Widget? suffix,
    Function? onPressed,
    TextStyle? textStyle,
    EdgeInsets? padding,
    Color? onSurface,
    double? radius}) {
  return TextButton(
    onPressed: () => onPressed?.call(),
    style: TextButton.styleFrom(
        onSurface: onSurface,
        backgroundColor: primarycolor,
        padding: padding ??
            EdgeInsets.symmetric(vertical: 16.0.r, horizontal: 19.0.r),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 10.0),
        )),
    child: Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        prefix ?? Container(),
        Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle ??
              TextStyle(
                  color: kDefaultWhite,
                  fontSize: 14.r,
                  fontWeight: FontWeight.w600),
        ),
        suffix ?? Container()
      ],
    ),
  );
}

Widget Primarybutton(
    {required String text,
    Color textColor = kDefaultWhite,
    Widget? prefix,
    Widget? suffix,
    Function? onPressed,
    TextStyle? textStyle,
    EdgeInsets? padding,
    Color? onSurface,
    double? radius}) {
  return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: primarycolor,
        padding: EdgeInsets.symmetric(horizontal: 5.0.r, vertical: 4.r),
        minimumSize: Size(162.0.r, 38.0.r),
        shape: RoundedRectangleBorder(
            side: new BorderSide(color: kDefaultWhite, width: 0.7),
            borderRadius: BorderRadius.circular(18.0.r)),
      ),
      onPressed: () => onPressed?.call(),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.0.r,
            height: 21.0 / 10.0,
            color: textColor,
            letterSpacing: -0.3),
      ));
}

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function? onPressed;
  PrimaryButton(
    this.text,
    this.onPressed, {
    Color this.textColor = kDefaultWhite,
    Key? key,
  }) : super(key: key);

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: primarycolor,
          padding: EdgeInsets.symmetric(horizontal: 5.0.r, vertical: 4.r),
          minimumSize: Size(162.0.r, 38.0.r),
          shape: RoundedRectangleBorder(
              side: new BorderSide(color: kDefaultWhite, width: 0.7),
              borderRadius: BorderRadius.circular(18.0.r)),
        ),
        onPressed: () => onPressed?.call(),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.0.r,
              height: 21.0 / 10.0,
              color: textColor,
              letterSpacing: -0.3),
        ));
  }
}

Widget Largebutton(
    {required String text,
    Color textColor = kDefaultWhite,
    Widget? prefix,
    Widget? suffix,
    Function? onPressed,
    TextStyle? textStyle,
    EdgeInsets? padding,
    Color? onSurface,
    double? radius}) {
  return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: HexColor("#2E2E5D"),
        padding: EdgeInsets.symmetric(horizontal: 5.0.r, vertical: 4.r),
        minimumSize: Size(299.0.r, 45.0.r),
        shape: RoundedRectangleBorder(
            side: new BorderSide(color: kDefaultWhite, width: 0.7),
            borderRadius: BorderRadius.circular(5.0.r)),
      ),
      onPressed: () => onPressed?.call(),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.0.r,
            height: 21.0 / 10.0,
            color: textColor,
            letterSpacing: -0.3),
      ));
}

Widget LargebuttonWithColor(
    {required String text,
    Color textColor = kDefaultWhite,
    Color? backColor,
    Widget? prefix,
    Widget? suffix,
    Function? onPressed,
    TextStyle? textStyle,
    EdgeInsets? padding,
    Color? onSurface,
    double? radius}) {
  return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backColor,
        padding: EdgeInsets.symmetric(horizontal: 5.0.r, vertical: 4.r),
        minimumSize: Size(299.0.r, 45.0.r),
        shape: RoundedRectangleBorder(
            side: new BorderSide(color: kDefaultWhite, width: 0.7),
            borderRadius: BorderRadius.circular(5.0.r)),
      ),
      onPressed: () => onPressed?.call(),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.0.r,
            height: 21.0 / 10.0,
            color: textColor,
            letterSpacing: -0.3),
      ));
}
