import 'package:flutter/material.dart';

class DecoratedBoxTransitionExample extends StatelessWidget {
  const DecoratedBoxTransitionExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DecoratedBoxTransition'),
      ),
      body: const DecoratedBoxTransitionDemo(),
    );
  }
}

class DecoratedBoxTransitionDemo extends StatefulWidget {
  const DecoratedBoxTransitionDemo({Key? key}) : super(key: key);

  @override
  State<DecoratedBoxTransitionDemo> createState() =>
      _DecoratedBoxTransitionDemoState();
}

class _DecoratedBoxTransitionDemoState extends State<DecoratedBoxTransitionDemo>
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
                  DecoratedBoxTransition(
                    decoration: DecorationTween(
                      begin: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      end: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.zero,
                      ),
                    ).animate(_controller),
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
