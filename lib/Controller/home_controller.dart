import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool isTapped = false;

  void Switchdot() {
    isTapped = !isTapped;
    notifyListeners();
  }
}
