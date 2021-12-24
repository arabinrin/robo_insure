import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/constants/color.dart';

class SavingsPlans extends StatelessWidget {
  static const route = '/SavingsPlans';
  const SavingsPlans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              "assets/images/arrow_left.png",
              width: 18.r,
              height: 23.r,
            ),
          ),
        ),
        backgroundColor: kDefaultWhite,
        elevation: 0,
        title: Text(
          "Savings Plans",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20.0.r,
            height: 24 / 20.0,
            color: HexColor("#001833"),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 26.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose a Plan",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18.0.r,
                height: 23 / 18.0,
                color: HexColor("#001833"),
              ),
            ),
            SizedBox(
              height: 24.r,
            ),
            SavingsPlanRect(
              text: "Educational Savings",
              text1: "Saving description goes here",
              color: "#F1EAFF",
              img: "assets/images/Piggy_Bank.png",
            ),
            SizedBox(
              height: 24.r,
            ),
            SavingsPlanRect(
              text: "Mortgage Savings",
              text1: "Saving description goes here",
              color: "#F6EACD",
              img: "assets/images/House_Savings.png",
            ),
            SizedBox(
              height: 24.r,
            ),
            SavingsPlanRect(
              text: "Business Savings",
              text1: "Saving description goes here",
              color: "#DEEEFF",
              img: "assets/images/Business_Money.png",
            ),
            SizedBox(
              height: 24.r,
            ),
          ],
        ),
      ),
    );
  }
}

class SavingsPlanRect extends StatelessWidget {
  final String color;
  final String text;
  final String text1;
  final String img;
  const SavingsPlanRect({
    Key? key,
    required this.color,
    required this.text,
    required this.text1,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.r,
      width: 325.r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: HexColor(color),
          border: Border.all(
            width: 0.5,
            color: HexColor("#7D7F88").withOpacity(0.4),
          ),
          boxShadow: [
            BoxShadow(
              color: HexColor("#434343").withOpacity(0.05),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.r),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0.r,
                          height: 22 / 17.0,
                          color: HexColor("#001833").withOpacity(0.7),
                          letterSpacing: -0.3),
                      children: [
                    TextSpan(text: "$text \n"),
                    TextSpan(
                      text: text1,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 9.0.r,
                          height: 11 / 9.0,
                          color: HexColor("#001833").withOpacity(0.7),
                          letterSpacing: -0.3),
                    ),
                  ])),
              Spacer(),
              Container(
                width: 54.r,
                height: 54.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Image.asset(
                    img,
                    height: 34.r,
                    width: 36.r,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
