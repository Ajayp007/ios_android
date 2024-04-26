import 'package:flutter/cupertino.dart';

class ICallScreen extends StatefulWidget {
  const ICallScreen({super.key});

  @override
  State<ICallScreen> createState() => _ICallScreenState();
}

class _ICallScreenState extends State<ICallScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Call Screen"),
    );
  }
}
