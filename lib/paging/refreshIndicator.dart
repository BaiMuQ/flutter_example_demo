import 'package:flutter/material.dart';

class RefreshIndicatorExample extends StatefulWidget {
  const RefreshIndicatorExample({Key? key}) : super(key: key);

  @override
  State<RefreshIndicatorExample> createState() =>
      _RefreshIndicatorExampleState();
}

class _RefreshIndicatorExampleState extends State<RefreshIndicatorExample> {
  List<String> items = ["第一项目", "第二项目", "第三项目"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RefreshIndicator'),
        ),
        body: PageView(
          children: [
            RefreshIndicator(
                color: Colors.white, // 颜色
                backgroundColor: Colors.black, // 背景色
                strokeWidth: 4.0, // 粗细
                displacement: 60, // 位移
                child: ListView(
                  children: items.map((e) => Text(e)).toList(),
                ),
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 2));
                  setState(() {
                    items.add("新增内容：${DateTime.now()}");
                  });
                })
          ],
        ));
  }
}
