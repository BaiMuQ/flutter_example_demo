import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredExample extends StatefulWidget {
  const ImageFilteredExample({Key? key}) : super(key: key);

  @override
  State<ImageFilteredExample> createState() => _ImageFilteredExampleState();
}

class _ImageFilteredExampleState extends State<ImageFilteredExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageFiltered'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: const FlutterLogo(
                size: 80,
              ),
            ),
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: const FlutterLogo(
                size: 80,
              ),
            ),
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: const FlutterLogo(
                size: 80,
              ),
            )
          ],
        ),
      ),
    );
  }
}
