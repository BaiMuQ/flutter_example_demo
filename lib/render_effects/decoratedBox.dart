import 'package:flutter/material.dart';

class DecoratedBoxExample extends StatefulWidget {
  const DecoratedBoxExample({Key? key}) : super(key: key);

  @override
  State<DecoratedBoxExample> createState() => _DecoratedBoxExampleState();
}

class _DecoratedBoxExampleState extends State<DecoratedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DecoratedBox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                // border: Border.all(width: 2.0)
                border: Border.all(color: Colors.blue[200]!, width: 1.0),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[100]!,
                    offset: const Offset(4, 4),
                    blurRadius: 2,
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.repeated,
                  colors: [Colors.blue[100]!, Colors.white],
                ),
              ),
              child: const FlutterLogo(
                size: 80,
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(width: 1.0),
                gradient: const RadialGradient(
                  colors: [Colors.blue, Colors.white],
                ),
              ),
              child: const SizedBox(
                height: 80,
                width: 80,
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(width: 1.0),
                gradient: const RadialGradient(
                  center: Alignment(0.5, -0.5),
                  colors: [Colors.blue, Colors.white],
                ),
              ),
              child: const SizedBox(
                height: 80,
                width: 80,
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(width: 1.0),
                gradient: const SweepGradient(
                  colors: [Colors.blue, Colors.white],
                ),
              ),
              child: const SizedBox(
                height: 80,
                width: 80,
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(width: 1.0),
                gradient: const SweepGradient(
                  transform: GradientRotation(3.14 / 2),
                  colors: [Colors.blue, Colors.white],
                ),
              ),
              child: const SizedBox(
                height: 80,
                width: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
