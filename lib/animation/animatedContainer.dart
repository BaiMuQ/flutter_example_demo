import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _number = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: _number,
          height: _number,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.2, 0.7],
              colors: [Colors.red, Colors.white],
            ),
            boxShadow: const [
              BoxShadow(
                blurRadius: .5,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.circular(_number / 2),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_number > 300) {
              _number = 100;
            } else {
              _number += 50;
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
