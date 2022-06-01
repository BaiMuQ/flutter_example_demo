import 'package:flutter/material.dart';

class SlideTransitionExample extends StatelessWidget {
  const SlideTransitionExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SlideTransition'),
      ),
      body: const SlideTransitionDemo(),
    );
  }
}

class SlideTransitionDemo extends StatefulWidget {
  const SlideTransitionDemo({Key? key}) : super(key: key);

  @override
  State<SlideTransitionDemo> createState() => _SlideTransitionDemoState();
}

class _SlideTransitionDemoState extends State<SlideTransitionDemo>
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
                  SlideTransition(
                    position: Tween(
                      begin: const Offset(0, 0),
                      end: const Offset(0.5, 0),
                    ).animate(_controller),
                    child: const FlutterLogo(
                      size: 80,
                    ),
                  ),
                  const Text("SlideTransition")
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
