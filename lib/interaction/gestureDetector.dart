import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({Key? key}) : super(key: key);

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  double _left = 20;
  double _top = 20;

  double _initSize = 200;
  double _size = 200;
  double _initAngle = 0;
  double _angle = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GestureDetector'),
        ),
        body: Column(
          children: [
            GestureDetector(
              onTap: () => print("监测到单击事件"),
              onLongPress: () => print("监测到长按事件"),
              onLongPressStart: (LongPressStartDetails details) =>
                  print("onLongPressStart:${details.globalPosition}"),
              onLongPressEnd: (LongPressEndDetails details) =>
                  print("onLongPressEnd:${details.globalPosition}"),
              onLongPressMoveUpdate: (LongPressMoveUpdateDetails details) =>
                  print("onLongPressMoveUpdate:${details.globalPosition}"),
              onTapDown: (TapDownDetails details) =>
                  print("按下:${details.kind}"),
              onTapUp: (TapUpDetails details) =>
                  print("松开:${details.globalPosition}"),
              onTapCancel: () => print("取消"),
              onDoubleTap: () => print("监测到双击事件"),
              onDoubleTapDown: (TapDownDetails details) =>
                  print("onDoubleTapDown:${details.kind}"),
              onDoubleTapCancel: () => print("onDoubleTapCancel"),
              child: Container(
                color: Colors.grey,
                width: double.infinity,
                height: 200,
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
            ),
            GestureDetector(
              onPanUpdate: (DragUpdateDetails details) => setState(() {
                _left += details.delta.dx;
                _top += details.delta.dy;
                if (_left < 0) _left = 0;
                if (_top < 0) _top = 0;
              }),
              child: Container(
                color: Colors.amber,
                padding: EdgeInsets.only(left: _left, top: _top),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onScaleStart: (_) {
                  _initAngle = _size;
                  _initAngle = _angle;
                },
                onScaleUpdate: (ScaleUpdateDetails detail) {
                  setState(() {
                    _size = _initSize * detail.scale;
                    _angle = _initAngle + detail.rotation;
                  });
                },
                child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: _angle,
                    child: Icon(
                      Icons.cloud,
                      size: _size,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
