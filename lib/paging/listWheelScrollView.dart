import 'package:flutter/material.dart';

class ListWheelScrollViewExample extends StatefulWidget {
  const ListWheelScrollViewExample({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewExample> createState() =>
      _ListWheelScrollViewExample();
}

class _ListWheelScrollViewExample extends State<ListWheelScrollViewExample> {
  final FixedExtentScrollController _controller = FixedExtentScrollController();

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
        title: const Text('ListWheelScrollView'),
      ),
      body: Center(
        child: Column(
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
                      child: const Text("动画 - 跳转第10日"),
                      onPressed: () => _controller.animateToItem(
                        9,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: ListWheelScrollView(
                controller: _controller,
                itemExtent: 48,
                // useMagnifier: true, // 启用放大镜
                magnification: 1.2, // 放大1.5倍
                overAndUnderCenterOpacity: .5, // 半透明效果
                // diameterRatio: .5, // 转轮直径
                perspective: 0.005, // 视角
                // squeeze: 1.5, // 密度
                physics: const FixedExtentScrollPhysics(),
                onSelectedItemChanged: (index) {
                  print("选择了${index + 1}日");
                },
                children: List.generate(
                  31,
                  (index) => Container(
                    color: Colors.grey,
                    alignment: Alignment.center,
                    child: Text("${index + 1}日"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
