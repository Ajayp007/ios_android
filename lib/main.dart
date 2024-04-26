import 'package:calculator/screens/home/provider/platform_provider.dart';
import 'package:calculator/utils/app_routs.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PlatformProvider()),
      ],
      child: Consumer<PlatformProvider>(
        builder: (context, value, child) {
          return value.isAndroid
              ? MaterialApp(
                  debugShowCheckedModeBanner: false,
                  routes: appRouts,
                )
              : CupertinoApp(
                  debugShowCheckedModeBanner: false,
                  routes: iappRouts,
                );
        },
      ),
    ),
  );
}
