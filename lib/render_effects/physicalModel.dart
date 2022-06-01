import 'package:flutter/material.dart';

class PhysicalModelExample extends StatefulWidget {
  const PhysicalModelExample({Key? key}) : super(key: key);

  @override
  State<PhysicalModelExample> createState() => _PhysicalModelExampleState();
}

class _PhysicalModelExampleState extends State<PhysicalModelExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhysicalModel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            PhysicalModel(
              color: Colors.white,
              elevation: 4.0,
              child: FlutterLogo(
                size: 80,
              ),
            ),
            PhysicalModel(
              color: Colors.white,
              elevation: 8.0,
              child: FlutterLogo(
                size: 80,
              ),
            ),
            PhysicalModel(
              color: Colors.white,
              elevation: 12.0,
              child: FlutterLogo(
                size: 80,
              ),
            ),
            PhysicalModel(
              color: Colors.white,
              elevation: 24.0,
              child: FlutterLogo(
                size: 80,
              ),
            )
          ],
        ),
      ),
    );
  }
}
