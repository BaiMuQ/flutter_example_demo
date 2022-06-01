import 'package:flutter/material.dart';

class OverlayEntryExample extends StatefulWidget {
  const OverlayEntryExample({Key? key}) : super(key: key);

  @override
  State<OverlayEntryExample> createState() => _OverlayEntryExampleState();
}

class _OverlayEntryExampleState extends State<OverlayEntryExample> {
  OverlayEntry? _entry;
  double _left = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OverlayEntry'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                _entry = OverlayEntry(
                  // opaque: true,
                  // maintainState: true,
                  builder: (context) {
                    return Positioned(
                        left: _left,
                        top: 200,
                        child: Container(
                          width: 150,
                          height: 150,
                          color: Colors.grey,
                          child: Text(
                            '123',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ));
                  },
                );
                Overlay.of(context)?.insert(_entry!);
              },
              child: const Text("添加"),
            ),
            ElevatedButton(
              onPressed: () {
                _left += 10;
                _entry?.markNeedsBuild();
              },
              child: const Text("移动"),
            ),
            ElevatedButton(
              onPressed: () => _entry?.remove(),
              child: const Text("删除"),
            ),
          ],
        ),
      ),
    );
  }
}
