import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            child: const Align(
              alignment: Alignment(0, 0),
              // alignment: FractionalOffset(0, 0),
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.blueAccent[200],
            child: const Align(
              alignment: Alignment.center,
              widthFactor: 2.0,
              heightFactor: 0.5,
              child: FlutterLogo(
                size: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
