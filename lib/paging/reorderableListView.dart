import 'package:flutter/material.dart';

class ReorderableListViewExample extends StatefulWidget {
  const ReorderableListViewExample({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewExample> createState() =>
      _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState
    extends State<ReorderableListViewExample> {
  final FixedExtentScrollController _controller = FixedExtentScrollController();
  final shades = [700, 200, 600, 500, 900, 800];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReorderableListView'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ReorderableListView(
              physics: const NeverScrollableScrollPhysics(),
              itemExtent: 48,
              onReorder: (int oldIndex, int newIndex) {
                if (newIndex > oldIndex) newIndex--;
                setState(() {
                  final shade = shades.removeAt(oldIndex);
                  shades.insert(newIndex, shade);
                });
              },
              children: shades
                  .map(
                    (e) => Container(
                      key: ValueKey(e),
                      height: 50,
                      margin: const EdgeInsets.all(10),
                      color: Colors.grey[e],
                    ),
                  )
                  .toList(),
            ),
          ),
          Expanded(
            child: ReorderableList(
              itemExtent: 48,
              physics: const NeverScrollableScrollPhysics(),
              onReorder: (int oldIndex, int newIndex) {
                if (newIndex > oldIndex) newIndex--;
                setState(() {
                  final shade = shades.removeAt(oldIndex);
                  shades.insert(newIndex, shade);
                });
              },
              itemCount: shades.length,
              itemBuilder: (BuildContext context, int index) {
                return ReorderableDragStartListener(
                  key: ValueKey(shades[index]),
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.all(4),
                    color: Colors.grey[shades[index]],
                  ),
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
