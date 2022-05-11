import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({Key? key}) : super(key: key);

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridView'),
        ),
        body: PageView(
          // scrollDirection: Axis.vertical, // 垂直滚动
          // pageSnapping: false,
          children: [
            GridView.builder(
              itemCount: 5000000,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.grey[index % 4 * 100],
                  alignment: Alignment.center,
                  child: Text("$index"),
                );
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100),
            ),
            GridView.count(
              crossAxisCount: 4, // 每行四个元素
              mainAxisSpacing: 16, // 主轴间距
              crossAxisSpacing: 4, // 交叉轴间距,
              childAspectRatio: 16 / 9, // 长宽比
              children: List.filled(
                50,
                Container(
                  color: Colors.grey,
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 4,
              children: List.generate(
                22,
                (index) => Container(
                  color: Colors.grey[index % 6 * 100],
                  child: Text("$index"),
                ),
              ),
            ),
            GridView.extent(
              maxCrossAxisExtent: 50,
              children: List.generate(
                50,
                (index) => Container(
                  color: Colors.grey[index % 6 * 100],
                  child: Text("$index"),
                ),
              ),
            ),
          ],
        ));
  }
}
