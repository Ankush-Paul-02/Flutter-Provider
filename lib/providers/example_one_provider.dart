import 'package:flutter/material.dart';

class ExampleOneProvider with ChangeNotifier {
  double _value = 1.0;

  double get getValue => _value;

  void setValue(double newValue) {
    _value = newValue;
    notifyListeners();
  }
}
