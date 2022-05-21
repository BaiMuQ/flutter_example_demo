import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _shrink = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPositioned'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            top: _shrink ? 300 : 150,
            right: _shrink ? 100 : 180,
            bottom: _shrink ? 400 : 200,
            left: _shrink ? 100 : 50,
            duration: const Duration(seconds: 1),
            child: Container(
              color: Colors.grey,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            _shrink = !_shrink;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
