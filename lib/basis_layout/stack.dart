import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Container(
        color: Colors.grey,
        height: 300,
        constraints: const BoxConstraints(maxWidth: 300, minWidth: 100),
        child: Stack(
          // fit: StackFit.loose,
          alignment: Alignment.topRight,
          clipBehavior: Clip.none,
          children: [
            const FlutterLogo(
              size: 50,
            ),
            const FlutterLogo(
              size: 100,
            ),
            Positioned(
              bottom: 10.0,
              child: Container(
                width: 40.0,
                height: 40.0,
                color: Colors.red,
              ),
            ),
            const Positioned(
                bottom: -25,
                right: -50,
                child: FlutterLogo(
                  size: 100,
                ))
          ],
        ),
      ),
    );
  }
}
