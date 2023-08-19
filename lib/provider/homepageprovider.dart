import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider_practice/screen/newhome.dart';
import 'package:provider_practice/screen/reandom.dart';

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

  void newhome(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return newHome();
    }));
  }
}
