import 'package:flutter/material.dart';

class ScrollConfigurationExample extends StatefulWidget {
  const ScrollConfigurationExample({Key? key}) : super(key: key);

  @override
  State<ScrollConfigurationExample> createState() =>
      _ScrollConfigurationExampleState();
}

class _ScrollConfigurationExampleState
    extends State<ScrollConfigurationExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollConfiguration'),
      ),
      body: ScrollConfiguration(
        behavior: MyScrollBehavior(),
        child: ListView.separated(
            itemBuilder: (_, index) {
              return Container(
                height: 56,
                alignment: Alignment.center,
                child: Text("这是第$index条"),
              );
            },
            separatorBuilder: (_, __) => Divider(),
            itemCount: 20),
      ),
    );
  }
}

class MyScrollBehavior extends ScrollBehavior {
  // 无法过量滚动
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const ClampingScrollPhysics(parent: RangeMaintainingScrollPhysics());
  }
}
