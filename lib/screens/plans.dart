import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:robo_insure/components/buttons.dart';
import 'package:robo_insure/constants/color.dart';

class Plans extends StatefulWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> with SingleTickerProviderStateMixin {
  late TabController tabController;
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
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              indicatorColor: neutral,
              indicatorWeight: 3.0,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text(
                    "Protection Plans",
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.0.r,
                      height: 22 / 14.0,
                      color: neutral,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Savings",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0.r,
                      height: 22 / 14.0,
                      color: neutral,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Investment",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0.r,
                      height: 22 / 14.0,
                      color: neutral,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(physics: ScrollPhysics(), children: [
                ProtectionPlans(),
                Savings(),
                Investment(),
              ]),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
}

class Investment extends StatelessWidget {
  const Investment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kDefaultWhite,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 135.r,
            decoration: BoxDecoration(
              color: primarycolorlight.withOpacity(0.7),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 23.r, top: 46.r),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0.r,
                          height: 22 / 14.0,
                          color: neutral,
                          letterSpacing: -0.3),
                      children: [
                    TextSpan(text: "Hello James\n"),
                    TextSpan(
                      text: "You have no Investment plan yet",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0.r,
                          height: 23 / 15.0,
                          color: neutral,
                          letterSpacing: -0.3),
                    ),
                  ])),
            ),
          ),
          PlansTextandIcon(
            text1: "Live Life",
            text2: "Live a worry-free life",
            img: "assets/images/noun-life.png",
          ),
          PlansTextandIcon(
            text1: "Take Control",
            text2: "Let your money work for you",
            img: "assets/images/noun-investment.png",
          ),
          PlansTextandIcon(
            text1: "Invest",
            text2: "Invest for your future",
            img: "assets/images/noun-investment2.png",
          ),
          Spacer(),
          Primarybutton(
              text: "Get Started",
              onPressed: () {
                Navigator.of(context).pushNamed('/InvestmentPlanView');
              }),
          SizedBox(
            height: 15.r,
          )
        ],
      ),
    );
  }
}

class Savings extends StatelessWidget {
  const Savings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kDefaultWhite,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 135.r,
            decoration: BoxDecoration(
              color: primarycolorlight.withOpacity(0.7),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 23.r, top: 46.r),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0.r,
                          height: 22 / 14.0,
                          color: neutral,
                          letterSpacing: -0.3),
                      children: [
                    TextSpan(text: "Hello James\n"),
                    TextSpan(
                      text: "You have no savings plan yet",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0.r,
                          height: 23 / 15.0,
                          color: neutral,
                          letterSpacing: -0.3),
                    ),
                  ])),
            ),
          ),
          PlansTextandIcon(
            text1: "Financial Freedom",
            text2: "Gain financial independence today",
            img: "assets/images/noun-financial-freedom.png",
          ),
          PlansTextandIcon(
            text1: "Build Wealth",
            text2: "Build up funds for yourself and your children",
            img: "assets/images/noun-wealth-gold-bricks.png",
          ),
          PlansTextandIcon(
            text1: "Save",
            text2: "Save towards that dream home and business",
            img: "assets/images/noun-save-money.png",
          ),
          Spacer(),
          Primarybutton(
              text: "Get Started",
              onPressed: () {
                Navigator.of(context).pushNamed('/SavingsPlans');
              }),
          SizedBox(
            height: 15.r,
          )
        ],
      ),
    );
  }
}

class ProtectionPlans extends StatelessWidget {
  const ProtectionPlans({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kDefaultWhite,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 135.r,
            decoration: BoxDecoration(
              color: primarycolorlight.withOpacity(0.7),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 23.r, top: 46.r),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0.r,
                          height: 22 / 14.0,
                          color: neutral,
                          letterSpacing: -0.3),
                      children: [
                    TextSpan(text: "Hello James\n"),
                    TextSpan(
                      text: "You have no protection plan yet",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0.r,
                          height: 23 / 15.0,
                          color: neutral,
                          letterSpacing: -0.3),
                    ),
                  ])),
            ),
          ),
          PlansTextandIcon(
            text1: "Insure",
            text2: "Get an all-year-round  insurance in minutes",
            img: "assets/images/noun-insurance.png",
          ),
          PlansTextandIcon(
            text1: "Pay in instalments",
            text2: "Enjoy all protection plans now pay in instalments",
            img: "assets/images/noun-payment.png",
          ),
          PlansTextandIcon(
            text1: "At 0% interest rate",
            text2: "spread payments within 6 months, interest free",
            img: "assets/images/noun-low-rates.png",
          ),
          Spacer(),
          Primarybutton(
              text: "Get Started",
              onPressed: () {
                Navigator.of(context).pushNamed('/ProtectionPlans');
              }),
          SizedBox(
            height: 15.r,
          )
        ],
      ),
    );
  }
}

class PlansTextandIcon extends StatelessWidget {
  final String text1;
  final String text2;
  final String img;
  const PlansTextandIcon({
    required this.text1,
    required this.text2,
    required this.img,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23.r, top: 46.r),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0.r,
                      height: 20 / 16.0,
                      color: neutral,
                      letterSpacing: -0.3),
                  children: [
                    TextSpan(text: "$text1 \n"),
                    TextSpan(
                      text: text2,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0.r,
                          height: 15 / 12.0,
                          color: neutral,
                          letterSpacing: -0.3),
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              width: 50.r,
              height: 50.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primarycolorlight,
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
          ),
        ],
      ),
    );
  }
}
