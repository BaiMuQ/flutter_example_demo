import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherExample> createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  double _number = 200;
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSwitcher'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: _number,
          height: _number,
          child: AnimatedSwitcher(
            transitionBuilder: (chid, animation) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                  scale: animation,
                  child: chid,
                ),
              );
            },
            duration: const Duration(milliseconds: 500),
            child: _loading
                ? const CircularProgressIndicator()
                : Image.asset("./assets/images/bg.jpeg"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            _loading = true;
          });
          await Future.delayed(const Duration(seconds: 2));
          setState(() {
            if (_number > 300) {
              _number = 100;
            } else {
              _number += 50;
            }
            _loading = false;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
