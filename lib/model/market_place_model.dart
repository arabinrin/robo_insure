import 'package:flutter/material.dart';
import 'package:robo_insure/screens/marketplace.dart';

class MarketPlaceModel with ChangeNotifier {
  final String? name;
  final double price;
  final String? desc;
  final String id;

  final String? imgPath;

  MarketPlaceModel({
    required this.id,
    required this.name,
    required this.price,
    this.desc,
    this.imgPath,
  });

 
}
