import 'package:flutter/cupertino.dart';

class IStatusScreen extends StatefulWidget {
  const IStatusScreen({super.key});

  @override
  State<IStatusScreen> createState() => _IStatusScreenState();
}

class _IStatusScreenState extends State<IStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Status Screen"),
    );
  }
}
