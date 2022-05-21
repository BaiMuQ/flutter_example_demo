import 'package:flutter/material.dart';

class AbsorbPointerExample extends StatefulWidget {
  const AbsorbPointerExample({Key? key}) : super(key: key);

  @override
  State<AbsorbPointerExample> createState() => _AbsorbPointerExampleState();
}

class _AbsorbPointerExampleState extends State<AbsorbPointerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('IgnorePointer'),
        ),
        body: Stack(
          children: [
            GestureDetector(
              onTap: () => print("无法穿透，我是底层"),
            ),
            AbsorbPointer(
              child: ElevatedButton(
                child: const Text("无法点击的按钮"),
                onPressed: () => print("这个事件不会被触发"),
              ),
            ),
          ],
        ));
  }
}
