import 'package:flutter/material.dart';

class PaddingExample extends StatefulWidget {
  const PaddingExample({Key? key}) : super(key: key);

  @override
  State<PaddingExample> createState() => _PaddingExampleState();
}

class _PaddingExampleState extends State<PaddingExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
      ),
      body: Container(
        color: Colors.grey,
        child: const Padding(
          padding: EdgeInsets.all(16),
          // padding: EdgeInsets.fromLTRB(16, 0, 12, 3),
          // padding: EdgeInsets.only(left: 16),
          // padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
