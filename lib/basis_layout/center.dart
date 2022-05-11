import 'package:flutter/material.dart';

class CenterExample extends StatelessWidget {
  const CenterExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            width: 350,
            child: const Center(
              heightFactor: 3,
              child: FlutterLogo(
                size: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
