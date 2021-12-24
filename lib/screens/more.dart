import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/constants/color.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultWhite,
      appBar: AppBar(
        backgroundColor: kDefaultWhite,
        elevation: 0,
        title: Text(
          "Plans",
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45.r,
                        width: 46.r,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#F4F4F4"),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/Profile.png",
                            width: 24.r,
                            height: 24.r,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.r,
                      ),
                      Text(
                        "James Brown ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0.r,
                          height: 22 / 13.0,
                          color: neutral,
                        ),
                      ),
                      Text(
                        "jamesafolabi @gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 8.0.r,
                          height: 22 / 8.0,
                          color: neutral,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 114.r,
                    height: 27.r,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19.r),
                        border: Border.all(
                          width: 1,
                          color: HexColor("#6E41E2"),
                        ),
                        color: HexColor("#F1EAFF")),
                    child: Center(
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontSize: 11.r,
                          fontWeight: FontWeight.w600,
                          height: 16 / 11,
                          color: HexColor("#6E41E2"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 51.r,
              ),
              MoreSection(
                img: "assets/images/referral.png",
                text: "Refer and Earn",
              ),
              SizedBox(
                height: 5.r,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 2,
                  color: HexColor("#7D7F88").withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 5.r,
              ),
              MoreSection(
                img: "assets/images/faq.png",
                text: "FAQ",
              ),
              SizedBox(
                height: 5.r,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 2,
                  color: HexColor("#7D7F88").withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 5.r,
              ),
              MoreSection(
                img: "assets/images/support.png",
                text: "Support",
              ),
              SizedBox(
                height: 5.r,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 2,
                  color: HexColor("#7D7F88").withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 5.r,
              ),
              MoreSection(
                img: "assets/images/frame.png",
                text: "Make a claim",
              ),
              SizedBox(
                height: 5.r,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 2,
                  color: HexColor("#7D7F88"),
                ),
              ),
              SizedBox(
                height: 5.r,
              ),
              MoreSection(
                img: "assets/images/terms.png",
                text: "Terms and Condition",
              ),
              SizedBox(
                height: 5.r,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 2,
                  color: HexColor("#7D7F88").withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 5.r,
              ),
              MoreSection(
                img: "assets/images/privacy.png",
                text: "Privacy Policy ",
              ),
              SizedBox(
                height: 5.r,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 2,
                  color: HexColor("#7D7F88").withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 5.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MoreSection extends StatelessWidget {
  final String img;
  final String text;
  const MoreSection({
    Key? key,
    required this.img,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40.r,
          width: 40.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: HexColor("#F1EAFF"),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              img,
              height: 28.r,
              width: 28.r,
            ),
          ),
        ),
        SizedBox(
          width: 10.r,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15.0.r,
            height: 15 / 15.0,
            color: HexColor("#6E41E2"),
          ),
        ),
        Spacer(),
        Image.asset(
          "assets/images/arrow-left.png",
          width: 20.r,
          height: 20.r,
        ),
      ],
    );
  }
}
