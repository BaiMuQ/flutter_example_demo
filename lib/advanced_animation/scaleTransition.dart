import 'package:flutter/material.dart';

class ScaleTransitionExample extends StatelessWidget {
  const ScaleTransitionExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScaleTransition'),
      ),
      body: const ScaleTransitionDemo(),
    );
  }
}

class ScaleTransitionDemo extends StatefulWidget {
  const ScaleTransitionDemo({Key? key}) : super(key: key);

  @override
  State<ScaleTransitionDemo> createState() => _ScaleTransitionDemoState();
}

class _ScaleTransitionDemoState extends State<ScaleTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ScaleTransition(
                    scale: _controller,
                    child: const FlutterLogo(
                      size: 80,
                    ),
                  ),
                  const Text("ScaleTransition")
                ],
              ),
            ],
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}
