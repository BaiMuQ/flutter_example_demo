import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    // _controller.addListener(() {
    //   print("现在的位置:${_controller.offset}");
    // });

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
        title: const Text('ListView'),
      ),
      body: Column(
        children: [
          Container(
              color: Colors.grey,
              padding: const EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: const Text("跳转顶部"),
                    onPressed: () => _controller.jumpTo(0),
                  ),
                  ElevatedButton(
                    child: const Text("动画 - 跳转顶部"),
                    onPressed: () => _controller.animateTo(
                      0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                    ),
                  ),
                ],
              )),
          Expanded(
            child: ListView.builder(
              // reverse: true // 倒序,
              // scrollDirection: Axis.horizontal, // 水平方向
              // padding: const EdgeInsets.only(bottom: 92), // 留白
              // shrinkWrap: true,
              // physics: AutoScrollPhysics(),
              controller: _controller,
              itemCount: 30,
              itemExtent: 80,
              itemBuilder: (BuildContext context, int index) {
                return Center(child: Counter(index));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  final int index;
  const Counter(
    this.index, {
    Key? key,
  }) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter>
    with AutomaticKeepAliveClientMixin // 融合类
{
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    super.build(context); //调用父类方法
    return ElevatedButton(
        onPressed: () => setState(() => _count++),
        child: Text("第${widget.index + 1}个计数器 ：$_count"));
  }

  @override
  bool get wantKeepAlive => _count != 0; // 仅当计数器不为0时需保持状态
}

class AutoScrollPhysics extends ScrollPhysics {
  @override
  ScrollPhysics applyTo(ScrollPhysics? ancestor) => AutoScrollPhysics();

  @override
  bool shouldAcceptUserOffset(ScrollMetrics position) => false;

  @override
  Simulation? createBallisticSimulation(
          ScrollMetrics position, double velocity) =>
      AutoScrollSimulation();
}

class AutoScrollSimulation extends Simulation {
  static const velocity = 200.0;
  @override
  double x(double time) => velocity * time;
  @override
  double dx(double time) => velocity;
  @override
  bool isDone(double time) => false;
}
