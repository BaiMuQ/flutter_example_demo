import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatefulWidget {
  const CustomScrollViewExample({Key? key}) : super(key: key);

  @override
  State<CustomScrollViewExample> createState() =>
      _CustomScrollViewExampleState();
}

class _CustomScrollViewExampleState extends State<CustomScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomScrollView'),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Text(
              "SliverGrid",
              style: TextStyle(fontSize: 28),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (contxt, index) {
                return Container(
                  height: 50,
                  color: Colors.primaries[index % 18],
                );
              },
              childCount: 15,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              "SliverList",
              style: TextStyle(fontSize: 28),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((contxt, index) {
              return Container(
                height: 25,
                color: Colors.primaries[index % 18],
              );
            }, childCount: 15),
          ),
          const SliverToBoxAdapter(
            child: Text(
              "SliverFixedExtentList",
              style: TextStyle(fontSize: 28),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              (contxt, index) {
                return Container(
                  height: 25,
                  color: Colors.primaries[index % 18],
                );
              },
              childCount: 15,
            ),
            itemExtent: 50,
          ),
          const SliverToBoxAdapter(
            child: Text(
              "SliverPrototypeExtentList",
              style: TextStyle(fontSize: 28),
            ),
          ),
          SliverPrototypeExtentList(
            delegate: SliverChildBuilderDelegate(
              (contxt, index) {
                return Container(
                  color: Colors.primaries[index % 18],
                  alignment: Alignment.center,
                  child: Text(
                    "item ${index + 1}",
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                );
              },
              childCount: 15,
            ),
            prototypeItem: const Text(
              "test item",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              "SliverFillViewport",
              style: TextStyle(fontSize: 28),
            ),
          ),
          SliverFillViewport(
            viewportFraction: .5,
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.grey[200],
                  padding: const EdgeInsets.all(48),
                  child: const Text("page1"),
                ),
                Container(
                  color: Colors.grey[400],
                  padding: const EdgeInsets.all(48),
                  child: const Text("page2"),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
