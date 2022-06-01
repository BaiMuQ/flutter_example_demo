import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalBarrierExample extends StatefulWidget {
  const ModalBarrierExample({Key? key}) : super(key: key);

  @override
  State<ModalBarrierExample> createState() => _ModalBarrierExampleState();
}

class _ModalBarrierExampleState extends State<ModalBarrierExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ModalBarrier'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                var msg = await showDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (context) => const MyBarrier(),
                );
                print(msg);
              },
              child: const Text("ModalBarrier"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBarrier extends StatefulWidget {
  const MyBarrier({Key? key}) : super(key: key);

  @override
  State<MyBarrier> createState() => _MyBarrierState();
}

class _MyBarrierState extends State<MyBarrier>
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
    return Stack(
      children: [
        AnimatedModalBarrier(
          dismissible: false,
          color: ColorTween(begin: Colors.red, end: Colors.blue)
              .animate(_controller),
        ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.of(context).pop("点击屏障"),
        ),
        AlertDialog(
          title: const Text("对话框"),
          content: const Text("这个对话框的屏障颜色一直变！"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop("关闭点击了"),
              child: const Text("关闭"),
            ),
          ],
        )
      ],
    );
  }
}
