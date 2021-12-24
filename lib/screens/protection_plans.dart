import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/components/primarysearch.dart';
import 'package:robo_insure/constants/color.dart';

class ProtectionPlans extends StatelessWidget {
  static const route = '/ProtectionPlans';
  const ProtectionPlans({Key? key}) : super(key: key);

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
          "Protection Plans",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20.0.r,
            height: 24 / 20.0,
            color: HexColor("#001833"),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(21.0.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchField(text: "Search For Protection Plans"),
              ),
              SizedBox(
                height: 12.r,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0.r)),
                          context: context,
                          builder: (context) {
                            return FractionallySizedBox(
                              heightFactor: 0.4,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 33.r, vertical: 30.r),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                        textAlign: TextAlign.start,
                                        text: TextSpan(
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17.0.r,
                                                height: 24 / 17.0,
                                                color: HexColor("#001833"),
                                                letterSpacing: -0.3),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      "Vehicle Insurance Type"),
                                              TextSpan(
                                                text: "",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20.0.r,
                                                    height: 30 / 20.0,
                                                    color: HexColor("#001833"),
                                                    letterSpacing: -0.3),
                                              ),
                                            ])),
                                    SizedBox(
                                      height: 32.r,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('/VehicleInsuranceForm');
                                      },
                                      child: Container(
                                        width: 307.r,
                                        height: 81.r,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          color: HexColor("#F2F4FB"),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 22.r),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: RichText(
                                                    textAlign: TextAlign.start,
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 15.0.r,
                                                            height: 22 / 15.0,
                                                            color: HexColor(
                                                                "#001833"),
                                                            letterSpacing:
                                                                -0.3),
                                                        children: [
                                                          TextSpan(
                                                              text:
                                                                  "Comprehensive " +
                                                                      "  \n"),
                                                          TextSpan(
                                                            text:
                                                                " Pay in instalment at 0% interest rate",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize:
                                                                    12.0.r,
                                                                height:
                                                                    18 / 12.0,
                                                                color: HexColor(
                                                                        "#001833")
                                                                    .withOpacity(
                                                                        0.5),
                                                                letterSpacing:
                                                                    -0.3),
                                                          ),
                                                        ])),
                                              ),
                                              Image.asset(
                                                "assets/images/arrow-left.png",
                                                width: 20.r,
                                                height: 20.r,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.r,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            '/VehicleInsuranceThirdParty');
                                      },
                                      child: Container(
                                        width: 307.r,
                                        height: 81.r,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          color: HexColor("#F2F4FB"),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 22.r),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: RichText(
                                                    textAlign: TextAlign.start,
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 15.0.r,
                                                            height: 22 / 15.0,
                                                            color: HexColor(
                                                                "#001833"),
                                                            letterSpacing:
                                                                -0.3),
                                                        children: [
                                                          TextSpan(
                                                              text:
                                                                  "Third Party " +
                                                                      "  \n"),
                                                          TextSpan(
                                                            text:
                                                                "Third party Fire & Theft Motor Insurance",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize:
                                                                    12.0.r,
                                                                height:
                                                                    18 / 12.0,
                                                                color: HexColor(
                                                                        "#001833")
                                                                    .withOpacity(
                                                                        0.5),
                                                                letterSpacing:
                                                                    -0.3),
                                                          ),
                                                        ])),
                                              ),
                                              Image.asset(
                                                "assets/images/arrow-left.png",
                                                width: 20.r,
                                                height: 20.r,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: ProtectionPlansRect(
                      w: 52,
                      h: 32,
                      img: "assets/images/Vehicle.png",
                      text: "Vehicle Insurance",
                      text1: " Comprehensive",
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('/MotorcycleInsuranceForm');
                    },
                    child: ProtectionPlansRect(
                      w: 42,
                      h: 31,
                      img: "assets/images/Motocycle.png",
                      text: "Motorcycle Insurance",
                      text1: " Comprehensive",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.r,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/HomeInsuranceForm');
                    },
                    child: ProtectionPlansSquare(
                      w: 33,
                      h: 34,
                      img: "assets/images/house.png",
                      text: "House ",
                      text1: " Insure your house",
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('/ApplianceInsuranceForm');
                    },
                    child: ProtectionPlansSquare(
                      w: 30,
                      h: 34,
                      img: "assets/images/appliances.png",
                      text: "Applicances",
                      text1: " Insure your Applicances",
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/GadgetInsuranceForm');
                    },
                    child: ProtectionPlansSquare(
                      w: 46,
                      h: 34,
                      img: "assets/images/Gadgets.png",
                      text: "Gadgets",
                      text1: " Insure your gadgets",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26.r,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/GoodsInTransitInsuranceForm');
                },
                child: ProtectionPlansRow(
                    text: "Goods in Transit",
                    text1: "Insure goods-in-transit",
                    h: 28,
                    w: 27,
                    img: "assets/images/Cargo.png"),
              ),
              SizedBox(
                height: 16.r,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/LifeInsuranceForm');
                },
                child: ProtectionPlansRow(
                    text: "Life ",
                    text1: "Life Insurance",
                    h: 26,
                    w: 26,
                    img: "assets/images/life_insurance.png"),
              ),
              SizedBox(
                height: 16.r,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/TravelInsuranceForm');
                },
                child: ProtectionPlansRow(
                    text: "Travels",
                    text1: "Travel Insurance",
                    h: 24,
                    w: 27,
                    img: "assets/images/flight_insurance.png"),
              ),
              SizedBox(
                height: 16.r,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/HealthInsuranceForm');
                },
                child: ProtectionPlansRow(
                    text: "Health",
                    text1: "Health Insurance",
                    h: 24,
                    w: 25,
                    img: "assets/images/health_insurance.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProtectionPlansRect extends StatelessWidget {
  final String text;
  final String text1;
  final String img;
  final double h;
  final double w;
  const ProtectionPlansRect({
    Key? key,
    required this.text,
    required this.text1,
    required this.h,
    required this.w,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.r,
      width: 160.r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: HexColor("#F2F2F3"),
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
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0.r,
                        height: 13 / 10.0,
                        color: HexColor("#001833"),
                        letterSpacing: -0.3),
                    children: [
                      TextSpan(text: "$text \n"),
                      TextSpan(
                        text: text1,
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 8.0.r,
                            height: 10 / 8.0,
                            color: HexColor("#001833"),
                            letterSpacing: -0.3),
                      ),
                    ])),
          ]),
    );
  }
}

class ProtectionPlansSquare extends StatelessWidget {
  final String text;
  final String text1;
  final String img;
  final double h;
  final double w;
  const ProtectionPlansSquare({
    Key? key,
    required this.text,
    required this.text1,
    required this.h,
    required this.w,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.r,
      width: 90.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: HexColor("#FFFFFF"),
        border: Border.all(
          width: 0.5,
          color: HexColor("#7D7F88").withOpacity(0.4),
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              img,
              width: w.r,
              height: h.r,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0.r,
                        height: 13 / 10.0,
                        color: HexColor("#001833"),
                        letterSpacing: -0.3),
                    children: [
                      TextSpan(text: "$text \n"),
                      TextSpan(
                        text: text1,
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 7.0.r,
                            height: 9 / 7.0,
                            color: HexColor("#001833"),
                            letterSpacing: -0.3),
                      ),
                    ])),
          ]),
    );
  }
}

class ProtectionPlansRow extends StatelessWidget {
  final String text;
  final String text1;
  final String img;
  final double h;
  final double w;
  const ProtectionPlansRow({
    Key? key,
    required this.text,
    required this.text1,
    required this.h,
    required this.w,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.r,
      width: 338.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: HexColor("#FFFFFF"),
        border: Border.all(
          width: 0.5,
          color: HexColor("#7D7F88").withOpacity(0.4),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.r),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                img,
                width: w.r,
                height: h.r,
              ),
              SizedBox(
                width: 21.r,
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0.r,
                          height: 16 / 13.0,
                          color: HexColor("#001833"),
                          letterSpacing: -0.3),
                      children: [
                    TextSpan(text: "$text \n"),
                    TextSpan(
                      text: text1,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 8.0.r,
                          height: 10 / 8.0,
                          color: HexColor("#001833"),
                          letterSpacing: -0.3),
                    ),
                  ])),
            ]),
      ),
    );
  }
}
