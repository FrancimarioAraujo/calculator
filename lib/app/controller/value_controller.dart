import 'package:flutter/material.dart';

class ValueController with ChangeNotifier {
  static ValueController instance = ValueController();
  String value = '';

  setNumber(String number) {
    value += number;
    notifyListeners();
  }
}
