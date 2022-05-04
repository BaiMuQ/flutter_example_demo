import 'package:flutter/material.dart';

class FlutterLogoExample extends StatelessWidget {
  const FlutterLogoExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Logo'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// FlutterLogoStyle markOnly
          Column(children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 10, top: 10),
              child: Text(
                'FlutterLogoStyle.markOnly:',
                style: TextStyle(fontSize: 20),
              ),
            ),
            FlutterLogo(
              size: 100,
              style: FlutterLogoStyle.markOnly,
            ),

            /// FlutterLogoStyle horizontal
            Padding(
              padding: EdgeInsets.only(bottom: 10, top: 10),
              child: Text(
                'FlutterLogoStyle.horizontal:',
                style: TextStyle(fontSize: 20),
              ),
            ),
            FlutterLogo(
              size: 100,
              style: FlutterLogoStyle.horizontal,
            ),

            /// FlutterLogoStyle stacked
            Padding(
              padding: EdgeInsets.only(bottom: 10, top: 10),
              child: Text(
                'FlutterLogoStyle.stacked:',
                style: TextStyle(fontSize: 20),
              ),
            ),
            FlutterLogo(
              size: 100,
              style: FlutterLogoStyle.stacked,
              textColor: Color.fromARGB(61, 61, 61, 61),
            )
          ]),
        ],
      ),
    );
  }
}
