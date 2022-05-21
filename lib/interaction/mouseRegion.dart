import 'package:flutter/material.dart';

class MouseRegionExample extends StatefulWidget {
  const MouseRegionExample({Key? key}) : super(key: key);

  @override
  State<MouseRegionExample> createState() => _MouseRegionExampleState();
}

class _MouseRegionExampleState extends State<MouseRegionExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MouseRegion'),
      ),
      body: MouseRegion(
        onEnter: (_) => print("鼠标进入区域"),
        onHover: (event) => print("鼠标滑动${event.localPosition}"),
        onExit: (_) => print("鼠标离开区域"),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
        ),
      ),
    );
  }
}
