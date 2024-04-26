import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformProvider with ChangeNotifier {
  bool isAndroid = true;

  void changePlatform() {
    isAndroid = !isAndroid;
    notifyListeners();
  }
}
