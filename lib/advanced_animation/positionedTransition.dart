import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatelessWidget {
  const PositionedTransitionExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PositionedTransition'),
      ),
      body: const PositionedTransitionDemo(),
    );
  }
}

class PositionedTransitionDemo extends StatefulWidget {
  const PositionedTransitionDemo({Key? key}) : super(key: key);

  @override
  State<PositionedTransitionDemo> createState() =>
      _PositionedTransitionDemoState();
}

class _PositionedTransitionDemoState extends State<PositionedTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          PositionedTransition(
            rect: RelativeRectTween(
              begin: const RelativeRect.fromLTRB(0, 0, 200, 200),
              end: const RelativeRect.fromLTRB(100, 100, 0, 0),
            ).animate(_controller),
            child: const FlutterLogo(
              size: 100,
            ),
          ),
          Positioned(
            bottom: 50.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _controller.repeat(reverse: true),
                  child: const Text("开始"),
                ),
                ElevatedButton(
                  onPressed: () => _controller.stop(),
                  child: const Text("结束"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
