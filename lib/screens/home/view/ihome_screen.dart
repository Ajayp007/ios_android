import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/platform_provider.dart';

class IHomeScreen extends StatefulWidget {
  const IHomeScreen({super.key});

  @override
  State<IHomeScreen> createState() => _IHomeScreenState();
}

class _IHomeScreenState extends State<IHomeScreen> {
  Map<int, Widget> segmentTextWidgets = <int, Widget>{
    0: const SizedBox(
      child: Text("Chat"),
    ),
    1: const SizedBox(
      child: Text("Chat"),
    ),
    2: const SizedBox(
      child: Text("Chat"),
    ),
  };
  PlatformProvider? providerR;
  PlatformProvider? providerW;

  @override
  Widget build(BuildContext context) {
    providerR = context.read<PlatformProvider>();
    providerW = context.watch<PlatformProvider>();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSegmentedControl(
            onValueChanged: (value) {}, children: segmentTextWidgets),
        trailing: CupertinoSwitch(
          value: providerW!.isAndroid,
          onChanged: (value) {
            providerR!.changePlatform();
          },
        ),
        leading: IconButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return CupertinoActionSheet(
                  title: const Text("Are You Sure To..."),
                  actions: [
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Yes"),
                    ),
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("No"),
                    ),
                  ],
                );
              },
            );
          },
          icon: const Icon(CupertinoIcons.app_badge_fill),
        ),
      ),
      child: const Center(),
    );
  }
}
