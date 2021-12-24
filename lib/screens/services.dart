import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/constants/color.dart';

class Services extends StatelessWidget {
  static const route = '/Services';
  const Services({Key? key}) : super(key: key);

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
        padding: EdgeInsets.symmetric(horizontal: 21.r, vertical: 26.r),
        child: Column(
          children: [
            Row(
              children: [
                ServiceRect(
                  text: "Report Claims",
                  h: 40,
                  w: 44,
                  img: "assets/images/noun_Claims.png",
                ),
                Spacer(),
                ServiceRect(
                  text: "View your policy",
                  h: 41,
                  w: 44,
                  img: "assets/images/noun_insurance_policy.png",
                )
              ],
            ),
            SizedBox(
              height: 27.r,
            ),
            GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              mainAxisSpacing: 21.0.r,
              crossAxisSpacing: 13.0.r,
              children: [
                ServiceSquare(
                  h: 37,
                  w: 51,
                  text: "Towing Services",
                  img: "assets/images/towing.png",
                ),
                ServiceSquare(
                  h: 36,
                  w: 43,
                  text: "Car Hire",
                  img: "assets/images/car_hire.png",
                ),
                ServiceSquare(
                  h: 34,
                  w: 40,
                  text: "Organizer ",
                  img: "assets/images/organizer.png",
                ),
                ServiceSquare(
                  h: 37,
                  w: 43,
                  text: "Organizer ",
                  img: "assets/images/ecommerce.png",
                ),
                ServiceSquare(
                  h: 41,
                  w: 44,
                  text: "Credit Score ",
                  img: "assets/images/credit_score.png",
                ),
                ServiceSquare(
                  h: 40,
                  w: 40,
                  text: "Drive with Caution ",
                  img: "assets/images/caution.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceRect extends StatelessWidget {
  final String text;

  final String img;
  final double h;
  final double w;
  const ServiceRect({
    Key? key,
    required this.text,
    required this.h,
    required this.w,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.r,
      width: 160.r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: HexColor("#F1EAFF"),
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
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              img,
              width: w.r,
              height: h.r,
            ),
            SizedBox(
              height: 20.r,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0.r,
                        height: 15 / 12.0,
                        color: HexColor("#001833"),
                        letterSpacing: -0.3),
                    children: [
                      TextSpan(text: "$text \n"),
                    ])),
          ]),
    );
  }
}

class ServiceSquare extends StatelessWidget {
  final String text;

  final String img;
  final double h;
  final double w;
  const ServiceSquare({
    Key? key,
    required this.text,
    required this.h,
    required this.w,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.r,
      width: 100.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: HexColor("#F1EAFF"),
        border: Border.all(
          width: 0.5,
          color: HexColor("#7D7F88").withOpacity(0.4),
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.r,
            ),
            Image.asset(
              img,
              width: w.r,
              height: h.r,
            ),
            SizedBox(
              height: 20.r,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10.0.r,
                        height: 13 / 10.0,
                        color: HexColor("#001833"),
                        letterSpacing: -0.3),
                    children: [
                      TextSpan(text: "$text \n"),
                    ])),
          ]),
    );
  }
}
