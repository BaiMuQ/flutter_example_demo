import 'package:flutter/material.dart';

class CurvesExample extends StatefulWidget {
  const CurvesExample({Key? key}) : super(key: key);

  @override
  State<CurvesExample> createState() => _CurvesExampleState();
}

class _CurvesExampleState extends State<CurvesExample> {
  double _number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curves'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 100),
        child: AnimatedPadding(
          curve: Curves.bounceOut,
          duration: const Duration(seconds: 2),
          padding: EdgeInsets.only(left: _number),
          child: Container(
            color: Colors.blue,
            width: 50,
            height: 50,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            _number = _number == 300 ? 0 : 300;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
