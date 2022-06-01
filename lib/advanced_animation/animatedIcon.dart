import 'package:flutter/material.dart';

class AnimatedIconExample extends StatelessWidget {
  const AnimatedIconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedIcon'),
      ),
      body: const AnimatedIconDemo(),
    );
  }
}

class AnimatedIconDemo extends StatefulWidget {
  const AnimatedIconDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedIconDemo> createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo>
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
                  AnimatedIcon(
                    icon: AnimatedIcons.add_event,
                    progress: _controller,
                  ),
                  const Text("add_event")
                ],
              ),
              Column(
                children: [
                  AnimatedIcon(
                    icon: AnimatedIcons.arrow_menu,
                    progress: _controller,
                  ),
                  const Text("arrow_menu")
                ],
              ),
              Column(
                children: [
                  AnimatedIcon(
                    icon: AnimatedIcons.event_add,
                    progress: _controller,
                  ),
                  const Text("event_add")
                ],
              ),
              Column(
                children: [
                  AnimatedIcon(
                    icon: AnimatedIcons.menu_arrow,
                    progress: _controller,
                  ),
                  const Text("menu_arrow")
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
