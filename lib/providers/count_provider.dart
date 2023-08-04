import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int _count = 0;
  int get getCount => _count;

  void setCount() {
    _count++;
    notifyListeners();
  }
}
