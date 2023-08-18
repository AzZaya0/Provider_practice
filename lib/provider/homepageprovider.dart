import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePageProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;
  void add() {
    _count++;
    notifyListeners();
  }

  void remove() {
    _count--;
    notifyListeners();
  }
}
