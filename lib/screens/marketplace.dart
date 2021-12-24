import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:robo_insure/components/primarysearch.dart';
import 'package:robo_insure/constants/color.dart';
import 'package:robo_insure/model/market_place_model.dart';
import 'package:robo_insure/provider/markerplace.dart';
import 'package:robo_insure/screens/market_place_details.dart';
import 'package:intl/intl.dart';

class MarketPlace extends StatelessWidget {
  static const route = '/MarketPlace';

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<MarketPlaceModels>(context, listen: false);

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
        padding: EdgeInsets.symmetric(horizontal: 21.r, vertical: 26.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shop Now Pay Later",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0.r,
                  height: 24 / 14.0,
                  color: HexColor("#001833"),
                ),
              ),
              SizedBox(
                height: 15.r,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchField(),
              ),
              SizedBox(
                height: 28.r,
              ),
              ViewAll(
                text: "Deals",
              ),
              SizedBox(
                height: 20.r,
              ),
              Container(
                height: 165.r,
                child: ListView.builder(
                    itemCount: products.list.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => MarketPlaceDetails(
                                products.list[index],
                              ),
                            ),
                          );
                        },
                        child: MarketPlaceItem(
                          id: products.list[index].id,
                          img: products.list[index].imgPath,
                          text: products.list[index].name,
                          price: products.list[index].price,
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20.r,
              ),
              ViewAll(
                text: "Vehicle Essentials",
              ),
              SizedBox(
                height: 20.r,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                child: Row(
                  children: [
                    MarketPlaceItem(
                      id: '3',
                      img: "assets/images/Safety_Jacket.png",
                      text: "C Caution",
                      price: 5055,
                    ),
                    SizedBox(
                      width: 12.r,
                    ),
                    MarketPlaceItem(
                      id: '4',
                      img: "assets/images/Safety_Jacket.png",
                      text: "Safety Jacket",
                      price: 5055,
                    ),
                    SizedBox(
                      width: 12.r,
                    ),
                    MarketPlaceItem(
                      id: '5',
                      img: "assets/images/C_caution.png",
                      text: "C Caution",
                      price: 5055,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ViewAll extends StatelessWidget {
  final String text;
  ViewAll({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15.0.r,
            height: 24 / 15.0,
            color: HexColor("#001833"),
          ),
        ),
        Spacer(),
        Row(
          children: [
            Text(
              "View all ",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 11.0.r,
                height: 24 / 11.0,
                color: HexColor("#001833"),
              ),
            ),
            Image.asset(
              "assets/images/chevron_right.png",
              width: 22.r,
              height: 22.r,
            )
          ],
        )
      ],
    );
  }
}

class MarketPlaceItem extends StatelessWidget {
  final String? img;
  final String? text;
  final String? id;
  final double price;
  const MarketPlaceItem({
    Key? key,
    required this.id,
    required this.text,
    required this.price,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(decimalDigits: 0);

    return Container(
      height: 165.r,
      width: 150.r,
      margin: EdgeInsets.symmetric(horizontal: 12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: HexColor("#FFFFFF"),
        border: Border.all(
          width: 0.5,
          color: HexColor("#7D7F88").withOpacity(0.4),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 13.r),
        child: Column(
          children: [
            Image.asset(
              img!,
              width: 89.r,
              height: 89.r,
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
            Expanded(
              child: RichText(
                  textAlign: TextAlign.start,
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
                          text: formatCurrency.format(price),
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0.r,
                              height: 18 / 12.0,
                              color: HexColor("#001833").withOpacity(0.7),
                              letterSpacing: -0.3),
                        ),
                      ])),
            )
          ],
        ),
      ),
    );
  }
}
