import 'package:flutter/material.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({Key? key}) : super(key: key);

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Opacity(
              opacity: 1,
              child: FlutterLogo(
                size: 50,
              ),
            ),
            Opacity(
              opacity: .8,
              child: FlutterLogo(
                size: 50,
              ),
            ),
            Opacity(
              opacity: .7,
              child: FlutterLogo(
                size: 50,
              ),
            ),
            Opacity(
              opacity: .6,
              child: FlutterLogo(
                size: 50,
              ),
            ),
            Opacity(
              opacity: .3,
              child: FlutterLogo(
                size: 50,
              ),
            ),
            Opacity(
              opacity: .1,
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
