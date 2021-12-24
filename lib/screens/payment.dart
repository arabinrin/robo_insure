import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/constants/color.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultWhite,
      appBar: AppBar(
        backgroundColor: kDefaultWhite,
        elevation: 0,
        title: Text(
          "Payment",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25.0.r,
            height: 22 / 25.0,
            color: neutral,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 28.r),
        child: Column(
          children: [
            GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                mainAxisSpacing: 21.0.r,
                crossAxisSpacing: 13.0.r,
                children: [
                  PaymentBox(
                    img: "assets/images/paywithspecta.png",
                    text1: "Buy now at 0% interest rate",
                    text2: "PayWithSpecta",
                    color: "#FFE5E5",
                    textcolor: "#C51955",
                    color2: HexColor("#FF9898").withOpacity(0.3),
                    color3: "#FFFFFF",
                  ),
                  PaymentBox(
                    img: "assets/images/robocard.png",
                    text1: "Experience Financial freedom",
                    text2: "Get Robo Card",
                    color: "#F1EAFF",
                    textcolor: "#6E41E2",
                    color2: HexColor("#6E41E2").withOpacity(0.15),
                    color3: "#6E41E2",
                  ),
                  PaymentBox(
                    img: "assets/images/buyaritime.png",
                    text1: "Recharge any phone easily",
                    text2: "Buy Airtime",
                    color: "#E8F1FD",
                    textcolor: "#1375E3",
                    color2: HexColor("#CAE4FF"),
                    color3: "#1375E3",
                  ),
                  PaymentBox(
                    img: "assets/images/paybills.png",
                    text1: "Need to take care of essentials",
                    text2: "Pay Bills",
                    color: "#D7FAED",
                    textcolor: "#07AD6F",
                    color2: HexColor("#06D286").withOpacity(0.15),
                    color3: "#07AD6F",
                  ),
                ])
          ],
        ),
      ),
    );
  }
}

class PaymentBox extends StatelessWidget {
  final String color;
  final String text1;
  final String text2;

  final Color color2;
  final String color3;
  final String textcolor;

  final String img;

  PaymentBox({
    Key? key,
    required this.color,
    required this.text1,
    required this.text2,
    required this.img,
    required this.color2,
    required this.color3,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.r,
      width: 155.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: HexColor(color),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.r,
              height: 40.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HexColor(color3),
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
                fontSize: 11.r,
                fontWeight: FontWeight.w600,
                height: 11 / 11,
                color: neutral.withOpacity(0.72),
              ),
            ),
            Spacer(),
            Container(
              width: 130.r,
              height: 27.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: color2,
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.r, vertical: 7.r),
                  child: Text(
                    text2,
                    style: TextStyle(
                      fontSize: 13.r,
                      fontWeight: FontWeight.w600,
                      height: 1,
                      color: HexColor(textcolor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.r,
            ),
          ],
        ),
      ),
    );
  }
}
