import 'package:flutter/material.dart';
import 'package:robo_insure/model/market_place_model.dart';

class MarketPlaceModels with ChangeNotifier {
  List<MarketPlaceModel> list = [
    MarketPlaceModel(
      id: '1',
      imgPath: "assets/images/Fire_Extinguisher.png",
      name: "Fire Extinguisher",
      price: 5055,
      desc:
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    MarketPlaceModel(
      id: '2',
      imgPath: "assets/images/Tyre.png",
      name: "Presea Tyre",
      price: 2255,
      desc:
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    MarketPlaceModel(
      id: '3',
      imgPath: "assets/images/C_caution.png",
      name: "Presea Tyre",
      price: 2255,
      desc:
          "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
  ];
  void addProduct(MarketPlaceModel product) {
    final newProduct = MarketPlaceModel(
      id: product.id,
      name: product.name,
      price: product.price,
      desc: product.desc,
      imgPath: product.imgPath,
    );
    list.add(newProduct);
    notifyListeners();
  }
}
