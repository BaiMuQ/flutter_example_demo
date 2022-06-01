import 'package:flutter/material.dart';

class SliverPersistentHeaderExample extends StatefulWidget {
  const SliverPersistentHeaderExample({Key? key}) : super(key: key);

  @override
  State<SliverPersistentHeaderExample> createState() =>
      _SliverPersistentHeaderExampleState();
}

class _SliverPersistentHeaderExampleState
    extends State<SliverPersistentHeaderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("SliverPersistentHeader"),
            pinned: true,
          ),
          const SliverToBoxAdapter(),
          for (int i = 1; i < 5; i++) ..._buildSection(i),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

List<Widget> _buildSection(int i) {
  return [
    SliverPersistentHeader(
      pinned: true,
      delegate: _MyDelegate(
        height: 48.0,
        child: FittedBox(
          child: Text("Sliver Header $i"),
        ),
      ),
    ),
    SliverFixedExtentList(
      delegate: SliverChildBuilderDelegate(
        (_, index) {
          return Container(
            color: Colors.primaries[index % 18][200],
          );
        },
        childCount: 8,
      ),
      itemExtent: 50,
    )
  ];
}

class _MyDelegate extends SliverPersistentHeaderDelegate {
  final double height;
  final Widget child;

  _MyDelegate({required this.height, required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      child: Material(
        elevation: overlapsContent ? 4.0 : 0.0,
        child: child,
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(_) => true;
}
