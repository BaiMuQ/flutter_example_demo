import 'package:flutter/material.dart';

class ListenerExample extends StatefulWidget {
  const ListenerExample({Key? key}) : super(key: key);

  @override
  State<ListenerExample> createState() => _ListenerExampleState();
}

class _ListenerExampleState extends State<ListenerExample> {
  double x = 0, y = 20;

  double _upCount = 0;
  double _downCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listener'),
      ),
      body: Listener(
        child: Container(
          color: Colors.grey[200],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("按下$_downCount次\n抬起$_upCount次"),
                Text("坐标$x,$y"),
              ],
            ),
          ),
        ),
        onPointerDown: (PointerEvent details) => setState(() {
          _downCount++;
        }),
        onPointerUp: (PointerEvent details) => setState(() {
          _upCount++;
        }),
        onPointerMove: (PointerEvent details) => setState(
          () {
            x = details.position.dx;
            y = details.position.dy;
          },
        ),
      ),
    );
  }
}
