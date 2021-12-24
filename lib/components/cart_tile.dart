import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:robo_insure/provider/cart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:robo_insure/Controller/home_controller.dart';
import 'package:robo_insure/components/animated_dot.dart';
import 'package:robo_insure/components/buttons.dart';
import 'package:robo_insure/constants/color.dart';
import 'package:robo_insure/provider/cart.dart';
import './cart.dart';
import 'package:intl/intl.dart';

class CartView extends StatelessWidget {
  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(decimalDigits: 0);

    final cart = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
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
            "Market Place",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0.r,
              height: 24 / 20.0,
              color: HexColor("#001833"),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 29.r),
          child: Column(children: [
            Container(
              child: cart.totalAmount != 0
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: cart.items.length,
                        itemBuilder: (ctx, i) => MarketsCarts(
                          cart.items.values.toList()[i].id,
                          cart.items.keys.toList()[i],
                          cart.items.values.toList()[i].price,
                          cart.items.values.toList()[i].quantity,
                          cart.items.values.toList()[i].title,
                          cart.items.values.toList()[i].imageUrl,
                        ),
                      ),
                    )
                  : Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset(
                            'assets/images/logo3.png',
                            height: MediaQuery.of(context).size.height * 0.4,
                            alignment: Alignment.center,
                          ),
                        ),
                        Text(
                          'Cart is Empty',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: HexColor("#001833").withOpacity(0.7),
                              fontSize: 20),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
            ),
            SizedBox(
              height: 39.r,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0.r,
                          height: 20 / 13.0,
                          color: HexColor("#001833").withOpacity(0.7),
                          letterSpacing: -0.3),
                      children: [
                        TextSpan(text: "Total Amount " + "  \n"),
                        TextSpan(
                          text: formatCurrency.format(cart.totalAmount),
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0.r,
                              height: 30 / 20.0,
                              color: HexColor("#001833").withOpacity(0.7),
                              letterSpacing: -0.3),
                        ),
                      ])),
            ),
            SizedBox(
              height: 39.r,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.r),
              child: Largebutton(
                  text: formatCurrency.format(cart.totalAmount),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                text: "Total Amount " + "  \n"),
                                            TextSpan(
                                              text: formatCurrency
                                                  .format(cart.totalAmount),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20.0.r,
                                                  height: 30 / 20.0,
                                                  color: HexColor("#001833"),
                                                  letterSpacing: -0.3),
                                            ),
                                          ])),
                                  SizedBox(
                                    height: 42.r,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Provider.of<HomeController>(context,
                                              listen: false)
                                          .Switchdot();
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
                                            AnimatedSwitcher(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              switchInCurve:
                                                  Curves.easeInOutBack,
                                              transitionBuilder:
                                                  (child, animation) =>
                                                      ScaleTransition(
                                                scale: animation,
                                                child: child,
                                              ),
                                              child: Container(
                                                width: 20.r,
                                                height: 20.r,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    width: 0.5,
                                                    color: HexColor("#7D7F88")
                                                        .withOpacity(0.4),
                                                  ),
                                                ),
                                                child: _controller.isTapped
                                                    ? InkWell(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5.0),
                                                          child: Container(
                                                            width: 8.r,
                                                            height: 9.r,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color: HexColor(
                                                                  "#001833"),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    : Container(),
                                              ),
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
                                                          letterSpacing: -0.3),
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
                                                              fontSize: 10.0.r,
                                                              height: 30 / 20.0,
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
                                              "assets/images/paywithspecta.png",
                                              width: 28.r,
                                              height: 28.r,
                                            ),
                                          ],
                                        ),
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
                                      borderRadius: BorderRadius.circular(7.0),
                                      color: HexColor("#F2F4FB"),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 22.r),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 20.r,
                                            height: 20.r,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                width: 0.5,
                                                color: HexColor("#7D7F88")
                                                    .withOpacity(0.4),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Container(
                                                width: 8.r,
                                                height: 9.r,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: HexColor("#001833"),
                                                ),
                                              ),
                                            ),
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
                                                        color:
                                                            HexColor("#001833"),
                                                        letterSpacing: -0.3),
                                                    children: [
                                                      TextSpan(
                                                          text:
                                                              "Card " + "  \n"),
                                                      TextSpan(
                                                        text:
                                                            "Debit or Credit Card",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 10.0.r,
                                                            height: 30 / 20.0,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  }),
            ),
            SizedBox(
              height: 39.r,
            ),
          ]),
        ),
      ),
    );
  }
}
