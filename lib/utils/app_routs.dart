import 'package:calculator/screens/home/view/home_screen.dart';
import 'package:calculator/screens/home/view/ihome_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> appRouts = {
  '/': (context) => const HomeScreen(),
};

Map<String, WidgetBuilder> iappRouts = {
  '/': (context) => const IHomeScreen(),
};
