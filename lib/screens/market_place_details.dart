import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import 'package:robo_insure/components/buttons.dart';
import 'package:robo_insure/components/cart_tile.dart';
import 'package:robo_insure/components/navigator.dart';
import 'package:robo_insure/constants/color.dart';
import 'package:robo_insure/model/market_place_model.dart';
import 'package:robo_insure/provider/cart.dart';
import 'package:robo_insure/provider/markerplace.dart';

class MarketPlaceDetails extends StatefulWidget {
  final MarketPlaceModel dealsModel;
  MarketPlaceDetails(this.dealsModel);
  @override
  State<MarketPlaceDetails> createState() => _MarketPlaceDetailsState();
}

class _MarketPlaceDetailsState extends State<MarketPlaceDetails> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(decimalDigits: 0);
    final cart = Provider.of<Cart>(context, listen: false);
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
        padding: EdgeInsets.symmetric(horizontal: 20.r),
        child: Container(
          height: 550.r,
          width: 336.r,
          margin: EdgeInsets.symmetric(vertical: 32.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: HexColor("#FFFFFF"),
            border: Border.all(
              width: 0.5,
              color: HexColor("#7D7F88").withOpacity(0.4),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  widget.dealsModel.imgPath!,
                  width: 200.r,
                  height: 200.r,
                ),
              ),
              SizedBox(
                height: 9.r,
              ),
              Divider(
                height: 5,
                color: HexColor("#7D7F88").withOpacity(0.5),
              ),
              SizedBox(
                height: 6.r,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          num -= 1;
                        });
                        cart.subItem(
                          widget.dealsModel.id,
                          widget.dealsModel.price,
                          widget.dealsModel.name.toString(),
                          widget.dealsModel.imgPath.toString(),
                        );
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: const Text('Removed from Cart!'),
                          duration: const Duration(seconds: 2),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {},
                          ),
                        ));
                      },
                      child: Container(
                        width: 32.r,
                        height: 32.r,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#FFFFFF"),
                          border: Border.all(
                            width: 0.5,
                            color: HexColor("#7D7F88").withOpacity(0.4),
                          ),
                        ),
                        child: Center(
                            child: Image.asset(
                          "assets/images/minus.png",
                          width: 16.r,
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 24.r,
                    ),
                    Text(
                      num.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24.0.r,
                          height: 18 / 12.0,
                          color: HexColor("#27214D").withOpacity(0.7),
                          letterSpacing: -0.3),
                    ),
                    SizedBox(
                      width: 24.r,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          num += 1;
                        });
                        cart.addItem(
                          widget.dealsModel.id,
                          widget.dealsModel.price,
                          widget.dealsModel.name.toString(),
                          widget.dealsModel.imgPath.toString(),
                        );
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: const Text('Added to Cart!'),
                          duration: const Duration(seconds: 2),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              cart.reduceQuantity(widget.dealsModel.id);
                            },
                          ),
                        ));
                      },
                      child: Container(
                        width: 32.r,
                        height: 32.r,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#EEE5FF"),
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/plus.png",
                          ),
                        )),
                      ),
                    ),
                    Spacer(),
                    Text(
                      formatCurrency.format(widget.dealsModel.price),
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0.r,
                          height: 30 / 20.0,
                          color: HexColor("#001833").withOpacity(0.7),
                          letterSpacing: -0.3),
                    ),
                    SizedBox(
                      width: 24.r,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6.r,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.r),
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0.r,
                              height: 29 / 22.0,
                              color: HexColor("#001833"),
                              letterSpacing: -0.3),
                          children: [
                            TextSpan(text: widget.dealsModel.name! + "  \n"),
                            TextSpan(
                              text: widget.dealsModel.desc,
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 11.0.r,
                                  height: 16 / 11.0,
                                  color: HexColor("#000000"),
                                  letterSpacing: -0.3),
                            ),
                          ])),
                ),
              ),
              SizedBox(
                height: 6.r,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.r),
                child: Largebutton(
                    text: "Get Started",
                    onPressed: () {
                      changeScreen(context, CartView());
                    }),
              ),
              SizedBox(
                height: 32.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
