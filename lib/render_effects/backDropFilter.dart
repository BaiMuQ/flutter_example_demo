import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterExample extends StatefulWidget {
  const BackDropFilterExample({Key? key}) : super(key: key);

  @override
  State<BackDropFilterExample> createState() => _BackDropFilterExampleState();
}

class _BackDropFilterExampleState extends State<BackDropFilterExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BackDropFilter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                const FlutterLogo(
                  size: 80,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: const FlutterLogo(
                    size: 24,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
