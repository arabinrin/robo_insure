import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:robo_insure/Controller/home_controller.dart';
import 'package:robo_insure/components/animated_dot.dart';
import 'package:robo_insure/components/buttons.dart';
import 'package:robo_insure/constants/color.dart';
import 'package:robo_insure/provider/cart.dart';
import 'package:intl/intl.dart';

class MarketsCarts extends StatefulWidget {
  static const route = '/Cart';

  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String title;
  final String imageUrl;

  MarketsCarts(
    this.id,
    this.productId,
    this.price,
    this.quantity,
    this.title,
    this.imageUrl,
  );

  @override
  State<MarketsCarts> createState() => _MarketsCartsState();
}

class _MarketsCartsState extends State<MarketsCarts>
    with SingleTickerProviderStateMixin {
  final formatCurrency = NumberFormat.simpleCurrency(decimalDigits: 0);

  final HomeController _controller = HomeController();
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Container(
      height: 112.r,
      width: 330.r,
      margin: EdgeInsets.symmetric(vertical: 22.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: HexColor("#FFFFFF"),
        border: Border.all(
          width: 0.5,
          color: HexColor("#7D7F88").withOpacity(0.4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(
              widget.imageUrl,
              width: 68.r,
              height: 81.r,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.r),
                child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0.r,
                            height: 20 / 15.0,
                            color: HexColor("#4D5D70"),
                            letterSpacing: -0.3),
                        children: [
                          TextSpan(text: widget.title + "  \n"),
                          TextSpan(
                            text: formatCurrency
                                .format(widget.price * widget.quantity),
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0.r,
                                height: 22 / 15.0,
                                color: HexColor("#C51955"),
                                letterSpacing: -0.3),
                          ),
                        ])),
              ),
            ),
            Container(
              width: 70.r,
              height: 20.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: HexColor("#F2F4FB"),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/minus.png",
                      width: 10.r,
                    ),
                  ),
                  Text(
                    widget.quantity.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0.r,
                        height: 22 / 15.0,
                        color: HexColor("#C51955"),
                        letterSpacing: -0.3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/images/plus.png",
                      width: 10.r,
                      height: 10.r,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
