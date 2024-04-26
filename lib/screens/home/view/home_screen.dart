import 'package:calculator/screens/home/provider/platform_provider.dart';
import 'package:calculator/screens/home/switch/call_screen.dart';
import 'package:calculator/screens/home/switch/chat_screen.dart';
import 'package:calculator/screens/home/switch/status_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PlatformProvider? providerR;
  PlatformProvider? providerW;

  @override
  Widget build(BuildContext context) {
    providerR = context.read<PlatformProvider>();
    providerW = context.watch<PlatformProvider>();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("PlatForm"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 200,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('Modal BottomSheet'),
                          ElevatedButton(
                            child: const Text('Close BottomSheet'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.open_in_browser),
          ),
          actions: [
            Switch(
              value: providerW!.isAndroid,
              onChanged: (value) {
                providerR!.changePlatform();
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Call",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
