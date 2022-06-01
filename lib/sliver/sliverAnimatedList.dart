import 'dart:math';

import 'package:flutter/material.dart';

class SliverAnimatedListExample extends StatefulWidget {
  const SliverAnimatedListExample({Key? key}) : super(key: key);

  @override
  State<SliverAnimatedListExample> createState() =>
      _SliverAnimatedListExampleState();
}

class _SliverAnimatedListExampleState extends State<SliverAnimatedListExample> {
  final _globlKey = GlobalKey<SliverAnimatedListState>();
  final List<MaterialColor> _items = [Colors.red, Colors.green, Colors.blue];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("SliverAnimatedList"),
            pinned: true,
          ),
          SliverAnimatedList(
            key: _globlKey,
            initialItemCount: _items.length,
            itemBuilder:
                (BuildContext context, int index, Animation<double> animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: Container(
                  height: 100,
                  color: _items[index][200],
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    child: const Text("删除"),
                    onPressed: () => _removeItem(index),
                  ),
                ),
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addItem(),
        child: const Icon(Icons.add),
      ),
    );
  }

  _addItem() {
    final _index = Random().nextInt(Colors.primaries.length);
    final color = Colors.primaries[_index];
    _items.insert(0, color);
    _globlKey.currentState!.insertItem(0);
  }

  _removeItem(int index) {
    final color = _items.removeAt(index);
    _globlKey.currentState!.removeItem(
      index,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: Container(
          height: 100,
          color: color[200],
        ),
      ),
    );
  }
}
