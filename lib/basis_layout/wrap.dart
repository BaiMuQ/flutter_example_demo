import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Container(
        color: Colors.grey,
        height: 500,
        child: Wrap(
          runSpacing: 10,
          runAlignment: WrapAlignment.center,
          children: const [
            FlutterLogo(
              size: 100,
            ),
            FlutterLogo(
              size: 100,
            ),
            FlutterLogo(
              size: 100,
            ),
            FlutterLogo(
              size: 100,
            ),
            FlutterLogo(
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
