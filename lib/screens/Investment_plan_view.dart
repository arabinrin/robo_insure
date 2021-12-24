import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/constants/color.dart';

class InvestmentPlanView extends StatelessWidget {
  static const route = '/InvestmentPlanView';
  const InvestmentPlanView({Key? key}) : super(key: key);

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
          "Target Investment",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20.0.r,
            height: 24 / 20.0,
            color: HexColor("#001833"),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.r, vertical: 31.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InvestmentPlanRect(
                color: "#DEEEFF",
                text3: "In 6 months",
                text2: "4.2%",
                text: "Robo Invest Bronze",
                text1:
                    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
                img: "assets/images/robo_invest.png",
              ),
              SizedBox(
                height: 31.r,
              ),
              InvestmentPlanRect(
                color: "#F1EAFF",
                text3: "Per Annum",
                text2: "6%",
                text: "Robo Invest Sliver",
                text1:
                    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
                img: "assets/images/sliver.png",
              ),
              SizedBox(
                height: 31.r,
              ),
              InvestmentPlanRect(
                color: "#EDFFF1",
                text3: "In Two Years",
                text2: "7%",
                text: "Robo Invest Gold",
                text1:
                    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
                img: "assets/images/gold.png",
              ),
              SizedBox(
                height: 31.r,
              ),
              InvestmentPlanRect(
                color: "#EDFFF1",
                text3: "In 5 Years",
                text2: "8%",
                text: "Robo Invest Platinum",
                text1:
                    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
                img: "assets/images/platinum.png",
              ),
              SizedBox(
                height: 31.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InvestmentPlanRect extends StatelessWidget {
  final String color;
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String img;
  const InvestmentPlanRect({
    Key? key,
    required this.color,
    required this.text,
    required this.text1,
    required this.img,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.r,
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
        padding:
            EdgeInsets.only(left: 13.r, right: 13.r, bottom: 13.r, top: 5.r),
        child: Column(
          children: [
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                    Spacer(),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0.r,
                                height: 19 / 15.0,
                                color: HexColor("#001833").withOpacity(0.7),
                                letterSpacing: -0.3),
                            children: [
                          TextSpan(text: "$text2 \n"),
                          TextSpan(
                            text: text3,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 11.0.r,
                                height: 16 / 11.0,
                                color: HexColor("#000000").withOpacity(0.7),
                                letterSpacing: -0.3),
                          ),
                        ])),
                  ]),
            ),
            RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0.r,
                        height: 19 / 15.0,
                        color: HexColor("#001833").withOpacity(0.7),
                        letterSpacing: -0.3),
                    children: [
                  TextSpan(text: "$text \n"),
                  TextSpan(
                    text: text1,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 11.0.r,
                        height: 16 / 11.0,
                        color: HexColor("#001833").withOpacity(0.7),
                        letterSpacing: -0.3),
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}
