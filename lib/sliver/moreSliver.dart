import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MoreSliverExample extends StatefulWidget {
  const MoreSliverExample({Key? key}) : super(key: key);

  @override
  State<MoreSliverExample> createState() => _MoreSliverExampleState();
}

class _MoreSliverExampleState extends State<MoreSliverExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: .5,
            sliver: SliverAppBar(
              title: Text("MoreSliver"),
              pinned: true,
            ),
          ),
          const SliverFillRemaining(
            child: Placeholder(),
          ),
          const SliverToBoxAdapter(
              child: Divider(
            thickness: 3,
            color: Colors.red,
          )),
          SliverLayoutBuilder(
            builder: (BuildContext context, SliverConstraints constraints) {
              final double size = constraints.remainingPaintExtent
                  .clamp(0, constraints.crossAxisExtent);
              return SliverToBoxAdapter(
                  child: Icon(
                Icons.circle,
                size: size,
              ));
            },
          ),
          const SliverToBoxAdapter(
              child: Divider(
            thickness: 3,
            color: Colors.red,
          )),
          const SliverFillRemaining(
            child: Placeholder(),
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
