import 'package:flutter/material.dart';

class RotatedBoxExample extends StatefulWidget {
  const RotatedBoxExample({Key? key}) : super(key: key);

  @override
  State<RotatedBoxExample> createState() => _RotatedBoxExampleState();
}

class _RotatedBoxExampleState extends State<RotatedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RotatedBox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            RotatedBox(
              quarterTurns: 0,
              child: FlutterLogo(
                size: 80,
                style: FlutterLogoStyle.horizontal,
              ),
            ),
            RotatedBox(
              quarterTurns: 1,
              child: FlutterLogo(
                size: 80,
                style: FlutterLogoStyle.horizontal,
              ),
            ),
            RotatedBox(
              quarterTurns: 2,
              child: FlutterLogo(
                size: 80,
                style: FlutterLogoStyle.horizontal,
              ),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: FlutterLogo(
                size: 80,
                style: FlutterLogoStyle.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
