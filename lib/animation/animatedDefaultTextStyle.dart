import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  const AnimatedDefaultTextStyleExample({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleExample> createState() =>
      _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState
    extends State<AnimatedDefaultTextStyleExample> {
  bool _big = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedDefaultTextStyle'),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 1),
          style: TextStyle(
            fontSize: _big ? 28 : 20,
            fontWeight: _big ? FontWeight.bold : null,
            color: _big ? Colors.black : Colors.grey,
            letterSpacing: _big ? 8 : 0,
          ),
          child: const Text("lorem ipsum"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            _big = !_big;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
