import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;
  final String imageUrl;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
    required this.imageUrl
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    //... means to continue after the previous data
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, value) {
      total += value.price * value.quantity;
    });

    return total;
  }

  //Add item to the cart
  void addItem(String productId, double price, String title,String imageUrl) {
    if (_items.containsKey(productId)) {
      //if in the cart update quantity
      _items.update(
          productId,
          (value) => CartItem(
            imageUrl: value.imageUrl,
              id: value.id,
              title: value.title,
              quantity: value.quantity + 1,
              price: value.price));
    } else {
      //If not in the cart add it
      _items.putIfAbsent(
          productId,
          () => CartItem(
            imageUrl: imageUrl,
              id: DateTime.now().toString(),
              title: title,
              quantity: 1,
              price: price));
    }
    notifyListeners();
  }
 void subItem(String productId, double price, String title,String imageUrl) {
    if (_items.containsKey(productId)) {
      //if in the cart update quantity
      _items.update(
          productId,
          (value) => CartItem(
            imageUrl: value.imageUrl,
              id: value.id,
              title: value.title,
              quantity: value.quantity - 1,
              price: value.price));
    } else {
      //If not in the cart add it
      _items.putIfAbsent(
          productId,
          () => CartItem(
            imageUrl: imageUrl,
              id: DateTime.now().toString(),
              title: title,
              quantity: 1,
              price: price));
    }
    notifyListeners();
  }
  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void reduceQuantity(String productId) {
    if (!_items.containsKey(productId)) {
      return;
    }
    if (_items[productId]!.quantity > 1) {
      _items.update(
          productId,
          (value) => CartItem(
            imageUrl: value.imageUrl,
              id: value.id,
              title: value.title,
              quantity: value.quantity - 1,
              price: value.price));
    } else {
      _items.remove(productId);
    }
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
