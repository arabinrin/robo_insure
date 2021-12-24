import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/components/buttons.dart';
import 'package:robo_insure/constants/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:robo_insure/screens/marketplace.dart';
import 'package:robo_insure/screens/protection_plans.dart';
import 'package:robo_insure/screens/savings_plans.dart';
import 'package:robo_insure/screens/services.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 28.r),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logo3.png",
                      height: 22.r,
                      width: 23.r,
                    ),
                    SizedBox(
                      width: 10.r,
                    ),
                    Text(
                      "Robo Insure",
                      style: GoogleFonts.manrope(
                        fontSize: 22.r,
                        fontWeight: FontWeight.w800,
                        height: 35 / 22,
                        color: neutral,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 40.r,
                      height: 40.r,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: bordercolor,
                            width: 1,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/logo2.png",
                          height: 22.r,
                          width: 23.r,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.r),
                Row(
                  children: [
                    Text(
                      "Hello, James",
                      style: TextStyle(
                        fontSize: 18.r,
                        fontWeight: FontWeight.w600,
                        height: 29 / 18,
                        color: neutral,
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 26.r,
                      height: 26.r,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/alarm.png",
                          height: 16.r,
                          width: 12.r,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.r),
                Container(
                  height: 127.r,
                  width: 331.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0.r),
                    gradient: LinearGradient(
                      colors: [
                        HexColor("#12315D"),
                        HexColor("#96079F"),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 20.r, left: 10.r, right: 10.r),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child:
                                    Image.asset("assets/images/0percent.png")),
                            SizedBox(
                              width: 9.r,
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11.0.r,
                                              height: 20 / 11.0,
                                              color: kDefaultWhite,
                                              letterSpacing: -0.3),
                                          children: [
                                        TextSpan(
                                            text:
                                                "Get a protection plan now and spread your payment in 6 instalments. \n"),
                                        TextSpan(
                                          text: "No charge, No interest.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 11.0.r,
                                              height: 20 / 11.0,
                                              color: kDefaultWhite,
                                              letterSpacing: -0.3),
                                        ),
                                      ])),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.r,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 8.r,
                                width: 8.r,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 7.r,
                            ),
                            Container(
                                height: 8.r,
                                width: 8.r,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#000000").withOpacity(0.4),
                                )),
                            SizedBox(
                              width: 7.r,
                            ),
                            Container(
                                height: 8.r,
                                width: 8.r,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#000000").withOpacity(0.4),
                                )),
                            SizedBox(
                              width: 7.r,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.r),
                GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    mainAxisSpacing: 21.0.r,
                    crossAxisSpacing: 13.0.r,
                    children: [
                      GestureDetector(
                        onTap: () {
                          {
                            Navigator.of(context)
                                .pushNamed(ProtectionPlans.route);
                          }
                        },
                        child: ServicesBox(
                          img: "assets/images/plans.png",
                          text1: "Protection \n plans",
                          text2: "We have  exciting insurance plans for you.",
                          color: "#CFFAEA",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          {
                            Navigator.of(context).pushNamed(SavingsPlans.route);
                          }
                        },
                        child: ServicesBox(
                          img: "assets/images/savings.png",
                          text1: "Savings &  Investment",
                          text2:
                              "Your future is bright with any of our savings or investment plans",
                          color: "#BDDCFF",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          {
                            Navigator.of(context).pushNamed(MarketPlace.route);
                          }
                        },
                        child: ServicesBox(
                          img: "assets/images/marketplace.png",
                          text1: "Marketplace ",
                          text2: "We care about your safety",
                          color: "#FCEED4",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          {
                            Navigator.of(context).pushNamed(Services.route);
                          }
                        },
                        child: ServicesBox(
                          img: "assets/images/services.png",
                          text1: "Services ",
                          text2: "We want to serve you better. Explore",
                          color: "#EEE5FF",
                        ),
                      ),
                    ])
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: neutral,
          child: Container(
            width: 52.r,
            height: 52.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: neutral,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/images/live_chat.png",
                height: 22.r,
                width: 23.r,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ServicesBox extends StatelessWidget {
  final String color;
  final String text1;
  final String text2;
  final String img;

  ServicesBox({
    Key? key,
    required this.color,
    required this.text1,
    required this.text2,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205.r,
      width: 160.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.r,
              height: 40.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HexColor(color),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  img,
                  height: 32.r,
                  width: 32.r,
                ),
              ),
            ),
            SizedBox(
              height: 10.r,
            ),
            Text(
              text1,
              style: TextStyle(
                fontSize: 17.r,
                fontWeight: FontWeight.w700,
                height: 22 / 17,
                color: neutral,
              ),
            ),
            SizedBox(
              height: 4.r,
            ),
            Expanded(
              child: Text(
                text2,
                style: TextStyle(
                  fontSize: 10.r,
                  fontWeight: FontWeight.w400,
                  height: 12 / 10,
                  color: neutral,
                ),
              ),
            ),
            SizedBox(
              height: 4.r,
            ),
          ],
        ),
      ),
    );
  }
}
