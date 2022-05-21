import 'package:flutter/material.dart';

class SafeAreaExample extends StatefulWidget {
  const SafeAreaExample({Key? key}) : super(key: key);

  @override
  State<SafeAreaExample> createState() => _SafeAreaExampleState();
}

class _SafeAreaExampleState extends State<SafeAreaExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (_, index) => Text("这是第$index"),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
