import 'package:flutter/material.dart';

class ShaderMaskExample extends StatefulWidget {
  const ShaderMaskExample({Key? key}) : super(key: key);

  @override
  State<ShaderMaskExample> createState() => _ShaderMaskExampleState();
}

class _ShaderMaskExampleState extends State<ShaderMaskExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShaderMask'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) => const LinearGradient(
                begin: Alignment(-1, 0),
                end: Alignment(-0.9, 0),
                tileMode: TileMode.repeated,
                colors: [
                  Colors.black,
                  Colors.white,
                ],
              ).createShader(bounds),
              child: const Text(
                "斑马效果",
                style: TextStyle(color: Colors.white, fontSize: 80),
              ),
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) => const RadialGradient(
                colors: [
                  Colors.blue,
                  Colors.green,
                  Colors.yellow,
                ],
                center: Alignment(0.5, 0.7),
                radius: 0.7,
              ).createShader(bounds),
              child: const FlutterLogo(
                size: 128,
              ),
            )
          ],
        ),
      ),
    );
  }
}
