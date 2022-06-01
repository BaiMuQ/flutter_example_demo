import 'package:flutter/material.dart';

class CompositedTransformExample extends StatefulWidget {
  const CompositedTransformExample({Key? key}) : super(key: key);

  @override
  State<CompositedTransformExample> createState() =>
      _CompositedTransformExampleState();
}

class _CompositedTransformExampleState
    extends State<CompositedTransformExample> {
  final _links = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CompositedTransform'),
      ),
      body: ListView.builder(
        itemExtent: 50,
        itemBuilder: (_, int index) {
          var link;
          var entry;
          if (_links.containsKey(index)) {
            link = _links[index];
          } else {
            link = LayerLink();
            _links[index] = link;
          }
          return Container(
            color: Colors.primaries[index % 18][200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CompositedTransformTarget(
                  link: link,
                  child: Text("Item $index"),
                ),
                ElevatedButton(
                  onPressed: () {
                    entry = OverlayEntry(builder: (_) {
                      return CompositedTransformFollower(
                        link: link,
                        offset: const Offset(80, -10),
                        showWhenUnlinked: false,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            color: Colors.white.withOpacity(.8),
                            child: ElevatedButton(
                              onPressed: () {
                                entry.remove();
                              },
                              child: Text("关闭$index"),
                            ),
                          ),
                        ),
                      );
                    });
                    Overlay.of(context)?.insert(entry);
                  },
                  child: const Icon(Icons.more_horiz),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
