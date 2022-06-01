import 'package:flutter/material.dart';

class AnimatedBuilderExample extends StatelessWidget {
  const AnimatedBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedBuilder'),
      ),
      body: const AnimatedBuilderDemo(),
    );
  }
}

class AnimatedBuilderDemo extends StatefulWidget {
  const AnimatedBuilderDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderDemo> createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final message = "lorem ipsum" * 20;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 30),
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
          Container(
            width: 300,
            height: 250,
            color: Colors.grey.withOpacity(.3),
            alignment: Alignment.center,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                final count = (message.length * _controller.value).floor();
                final text = message.substring(0, count);
                return Column(
                  children: [
                    Text(
                      text,
                      style: const TextStyle(fontSize: 16),
                    ),
                    child!
                  ],
                );
              },
              child: const Text("AnimatedBuilder"),
            ),
          ),
          Container(
            width: 300,
            height: 250,
            color: Colors.grey.withOpacity(.3),
            alignment: Alignment.center,
            child: Column(
              children: [
                TypeWriterTransition(
                  progress: _controller,
                  message: message,
                ),
                const Text("TypeWriterTransition"),
              ],
            ),
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

class TypeWriterTransition extends AnimatedWidget {
  final String message;
  final Animation<double> progress;

  const TypeWriterTransition({
    Key? key,
    required this.message,
    required this.progress,
  }) : super(key: key, listenable: progress);

  @override
  Widget build(BuildContext context) {
    final count = (message.length * progress.value).floor();
    final text = message.substring(0, count);
    return Text(
      text,
      style: const TextStyle(fontSize: 16),
    );
  }
}
