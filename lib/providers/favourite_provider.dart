import 'package:flutter/material.dart';

class FavouriteItemProvider with ChangeNotifier {
  List<int> _selectedItems = [];

  List<int> get selectedItem => _selectedItems;

  void addItems(int value) {
    _selectedItems.add(value);
    notifyListeners();
  }

  void removeItems(int value) {
    _selectedItems.remove(value);
    notifyListeners();
  }
}
