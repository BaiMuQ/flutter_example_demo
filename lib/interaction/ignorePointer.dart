import 'package:flutter/material.dart';

class IgnorePointerExample extends StatefulWidget {
  const IgnorePointerExample({Key? key}) : super(key: key);

  @override
  State<IgnorePointerExample> createState() => _IgnorePointerExampleState();
}

class _IgnorePointerExampleState extends State<IgnorePointerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('IgnorePointer'),
        ),
        body: Stack(
          children: [
            GestureDetector(
              onTap: () => print("会被穿透，我是底层"),
            ),
            IgnorePointer(
              child: ElevatedButton(
                child: const Text("无法点击的按钮"),
                onPressed: () => print("这个事件不会被触发"),
              ),
            ),
          ],
        ));
  }
}
