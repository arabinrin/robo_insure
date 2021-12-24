import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/constants/color.dart';

class PrimarySearchWidget extends StatelessWidget {
  PrimarySearchWidget(
      {Key? key, this.onPressed, this.placeholderText, this.prefixWidget})
      : super(key: key);

  String? placeholderText;
  Widget? prefixWidget;
  Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: neutral, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10))),
        onPressed: () => onPressed?.call(),
        child: Row(
          children: [
            prefixWidget ??
                ImageIcon(
                  AssetImage('assets/icons/search-normal.png'),
                  color: kDefaultWhite,
                ),
            Text(
              placeholderText ?? 'Search',
              style: TextStyle(
                  fontSize: 17.0.sp,
                  fontWeight: FontWeight.w300,
                  color: kDefaultWhite),
            )
          ],
        ));
  }
}

Widget SearchField({
  Function(String)? onChanged,
  TextEditingController? controller,
  String? text,
}) {
  return TextField(
    controller: controller,
    onChanged: onChanged,
    showCursor: true,
    cursorColor: neutral,
    style: TextStyle(
        color: HexColor("#7D7F88"),
        fontSize: 14.sp,
        height: 18 / 14.r,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.041.sp),
    textCapitalization: TextCapitalization.sentences,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      filled: true,
      fillColor: HexColor("#F2F2F3"),
      prefixIcon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/icons/search-normal.png',
            width: 22.r, height: 23.r, color: neutral),
      ),
      hintText: text ?? 'Search',
      hintStyle: TextStyle(
          color: Color(0xffcccccc),
          fontSize: 17.sp,
          height: 22 / 18.r,
          letterSpacing: -0.041.sp),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0.r),
        borderSide: BorderSide(color: neutral, width: 0.5.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0.r),
        borderSide: BorderSide(color: Colors.white, width: 0.5.r),
      ),
    ),
  );
}
