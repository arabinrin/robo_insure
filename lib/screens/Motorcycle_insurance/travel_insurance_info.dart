import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/components/buttons.dart';
import 'package:robo_insure/components/dotted_border.dart';
import 'package:robo_insure/components/inputs.dart';
import 'package:robo_insure/constants/color.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:robo_insure/screens/Vehicle_insurance/vehicle_insurance_info.dart';

class TravelInsuranceForm extends StatelessWidget {
  static const route = '/TravelInsuranceForm';
  const TravelInsuranceForm({Key? key}) : super(key: key);

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 23.r,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.r,
                    height: 50.r,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: HexColor("#F1EAFF"),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/images/flight_insurance.png",
                        width: 25.r,
                        height: 25.r,
                      ),
                    ),
                  ),
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
                              heightFactor: 487 / 764,
                              child: BenefitModal(),
                            );
                          });
                    },
                    child: Container(
                      width: 108.r,
                      height: 31.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0.r),
                        color: HexColor("#F1EAFF"),
                        border: Border.all(
                          width: 0.7,
                          color: HexColor("#6E41E2"),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/images/Show.png",
                            width: 18.r,
                            height: 23.r,
                          ),
                          Text("Benefits",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0.r,
                                  height: 24 / 14.0,
                                  color: HexColor("#6E41E2"),
                                  letterSpacing: -0.3))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 23.r,
              ),
              RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0.r,
                          height: 24 / 20.0,
                          color: HexColor("#001833"),
                          letterSpacing: -0.3),
                      children: [
                        TextSpan(text: "Travel Insurance  "),
                        TextSpan(
                          text: "",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0.r,
                              height: 24 / 14.0,
                              color: HexColor("#001833"),
                              letterSpacing: -0.3),
                        ),
                      ])),
              SizedBox(
                height: 23.r,
              ),
              Text(
                "Sum Insured",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0.r,
                    height: 18 / 12.0,
                    color: HexColor("#001833"),
                    letterSpacing: -0.3),
              ),
              SizedBox(
                height: 4.r,
              ),
              Input(),
              SizedBox(
                height: 24.r,
              ),
              Text(
                "Premium to Pay",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0.r,
                    height: 18 / 12.0,
                    color: HexColor("#001833"),
                    letterSpacing: -0.3),
              ),
              SizedBox(
                height: 4.r,
              ),
              Input(),

              SizedBox(
                height: 31.r,
              ),
              Container(
                width: 329.r,
                height: 61.r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0.r),
                  border: Border.all(
                    width: 1,
                    color: HexColor("#000000").withOpacity(0.1),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 25.r,
                      color: HexColor("#DEEEFF"),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Policy Start Date  ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8.0.r,
                                  height: 12 / 8.0,
                                  color: HexColor("#001833").withOpacity(0.5),
                                  letterSpacing: -0.3),
                            ),
                            Text(
                              "Policy Start Date ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8.0.r,
                                  height: 12 / 8.0,
                                  color: HexColor("#001833").withOpacity(0.5),
                                  letterSpacing: -0.3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "22/09/2021 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0.r,
                                  height: 18 / 12.0,
                                  color: HexColor("#001833").withOpacity(0.5),
                                  letterSpacing: -0.3),
                            ),
                            Text(
                              "21/09/2021 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0.r,
                                  height: 18 / 12.0,
                                  color: HexColor("#001833").withOpacity(0.5),
                                  letterSpacing: -0.3),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21.r,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Policy Information ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0.r,
                      height: 24 / 14.0,
                      color: HexColor("#001833"),
                      letterSpacing: -0.3),
                ),
              ),
              SizedBox(
                height: 24.r,
              ),
              Text(
                "Surname ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0.r,
                    height: 18 / 12.0,
                    color: HexColor("#001833"),
                    letterSpacing: -0.3),
              ),
              SizedBox(
                height: 4.r,
              ),
              SizedBox(
                height: 4.r,
              ),
              Input(),
              SizedBox(
                height: 19.r,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Firstname ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0.r,
                              height: 18 / 12.0,
                              color: HexColor("#001833"),
                              letterSpacing: -0.3),
                        ),
                        SizedBox(
                          height: 4.r,
                        ),
                        Input(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 21.r,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Othername  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0.r,
                              height: 18 / 12.0,
                              color: HexColor("#001833"),
                              letterSpacing: -0.3),
                        ),
                        SizedBox(
                          height: 4.r,
                        ),
                        Input(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 19.r,
              ),
              Text(
                "BVN  ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0.r,
                    height: 18 / 12.0,
                    color: HexColor("#001833"),
                    letterSpacing: -0.3),
              ),
              SizedBox(
                height: 4.r,
              ),
              Input(),
              SizedBox(
                height: 19.r,
              ),
              Text(
                "Date of Birth ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0.r,
                    height: 18 / 12.0,
                    color: HexColor("#001833"),
                    letterSpacing: -0.3),
              ),
              SizedBox(
                height: 4.r,
              ),
              Input(),
              SizedBox(
                height: 19.r,
              ),
              //Todo fix the radio button
              Text(
                "Input Medical Condition ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0.r,
                    height: 18 / 12.0,
                    color: HexColor("#001833"),
                    letterSpacing: -0.3),
              ),
              SizedBox(
                height: 4.r,
              ),
              Input(),
              SizedBox(
                height: 19.r,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Upload Documents ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0.r,
                      height: 24 / 14.0,
                      color: HexColor("#001833"),
                      letterSpacing: -0.3),
                ),
              ),
              SizedBox(
                height: 24.r,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Valid ID",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0.r,
                        height: 18 / 12.0,
                        color: HexColor("#001833"),
                        letterSpacing: -0.3),
                  ),
                  SizedBox(
                    height: 4.r,
                  ),
                  Dotted_borderExpanded(),
                ],
              ),
              SizedBox(
                height: 20.r,
              ),
              Center(
                  child: LargebuttonWithColor(
                      text: "Continue to Pay",
                      backColor: HexColor("#6E41E2"),
                      onPressed: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0.r)),
                            context: context,
                            builder: (context) {
                              return FractionallySizedBox(
                                heightFactor: 0.44,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 33.r, vertical: 30.r),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                          textAlign: TextAlign.start,
                                          text: TextSpan(
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.0.r,
                                                  height: 20 / 13.0,
                                                  color: HexColor("#001833")
                                                      .withOpacity(0.35),
                                                  letterSpacing: -0.3),
                                              children: [
                                                TextSpan(
                                                    text: "Total Amount " +
                                                        "  \n"),
                                                TextSpan(
                                                  text: " N 30 ,000.00",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 20.0.r,
                                                      height: 30 / 20.0,
                                                      color:
                                                          HexColor("#001833"),
                                                      letterSpacing: -0.3),
                                                ),
                                              ])),
                                      SizedBox(
                                        height: 42.r,
                                      ),
                                      Container(
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
                                              Image.asset(
                                                "assets/images/paywithspecta.png",
                                                width: 28.r,
                                                height: 28.r,
                                              ),
                                              SizedBox(
                                                width: 20.r,
                                              ),
                                              Expanded(
                                                child: RichText(
                                                    textAlign: TextAlign.start,
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0.r,
                                                            height: 21 / 14.0,
                                                            color: HexColor(
                                                                "#001833"),
                                                            letterSpacing:
                                                                -0.3),
                                                        children: [
                                                          TextSpan(
                                                              text:
                                                                  "PayWithSpecta " +
                                                                      "  \n"),
                                                          TextSpan(
                                                            text:
                                                                " Pay in instalment at 0% interest rate",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    10.0.r,
                                                                height:
                                                                    30 / 20.0,
                                                                color: HexColor(
                                                                        "#001833")
                                                                    .withOpacity(
                                                                        0.35),
                                                                letterSpacing:
                                                                    -0.3),
                                                          ),
                                                        ])),
                                              ),
                                              Image.asset(
                                                "assets/images/arrow-left.png",
                                                width: 20.r,
                                                height: 20.r,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.r,
                                      ),
                                      Container(
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
                                              Image.asset(
                                                "assets/images/visa.png",
                                                width: 28.r,
                                                height: 28.r,
                                              ),
                                              SizedBox(
                                                width: 5.r,
                                              ),
                                              Image.asset(
                                                "assets/images/mastercard.png",
                                                width: 28.r,
                                                height: 28.r,
                                              ),
                                              SizedBox(
                                                width: 20.r,
                                              ),
                                              Expanded(
                                                child: RichText(
                                                    textAlign: TextAlign.start,
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0.r,
                                                            height: 21 / 14.0,
                                                            color: HexColor(
                                                                "#001833"),
                                                            letterSpacing:
                                                                -0.3),
                                                        children: [
                                                          TextSpan(
                                                              text: "Card " +
                                                                  "  \n"),
                                                          TextSpan(
                                                            text:
                                                                "Debit or Credit Card",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    10.0.r,
                                                                height:
                                                                    30 / 20.0,
                                                                color: HexColor(
                                                                        "#001833")
                                                                    .withOpacity(
                                                                        0.35),
                                                                letterSpacing:
                                                                    -0.3),
                                                          ),
                                                        ])),
                                              ),
                                              Image.asset(
                                                "assets/images/arrow-left.png",
                                                width: 20.r,
                                                height: 20.r,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      })),
              SizedBox(
                height: 24.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
