import 'package:flutter/material.dart';

class FadeTransitionExample extends StatelessWidget {
  const FadeTransitionExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeTransition'),
      ),
      body: const FadeTransitionDemo(),
    );
  }
}

class FadeTransitionDemo extends StatefulWidget {
  const FadeTransitionDemo({Key? key}) : super(key: key);

  @override
  State<FadeTransitionDemo> createState() => _FadeTransitionDemoState();
}

class _FadeTransitionDemoState extends State<FadeTransitionDemo>
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
                  FadeTransition(
                    opacity: _controller,
                    child: const FlutterLogo(
                      size: 80,
                    ),
                  ),
                  const Text("FadeTransition")
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
