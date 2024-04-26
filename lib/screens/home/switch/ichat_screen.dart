import 'package:flutter/cupertino.dart';

class IChatScreen extends StatefulWidget {
  const IChatScreen({super.key});

  @override
  State<IChatScreen> createState() => _IChatScreenState();
}

class _IChatScreenState extends State<IChatScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Text("Chat Screen"),
    );
  }
}
