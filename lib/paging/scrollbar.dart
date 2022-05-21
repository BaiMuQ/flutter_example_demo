import 'package:flutter/material.dart';

class ScrollbarExample extends StatefulWidget {
  const ScrollbarExample({Key? key}) : super(key: key);

  @override
  State<ScrollbarExample> createState() => _ScrollbarExampleState();
}

class _ScrollbarExampleState extends State<ScrollbarExample> {
  final ScrollController _controller1 = ScrollController();
  final ScrollController _controller2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Scrollbar'),
        ),
        body: PageView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 280,
                  child: Scrollbar(
                    isAlwaysShown: true,
                    controller: _controller1,
                    child: ListView.builder(
                      controller: _controller1,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Text("这是第一个列表的第$index项"),
                        );
                      },
                      itemCount: 200,
                    ),
                  ),
                ),
                Container(
                  height: 280,
                  child: Scrollbar(
                    controller: _controller2,
                    child: ListView.builder(
                      controller: _controller2,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Text("这是第二个列表的第$index项"),
                        );
                      },
                      itemCount: 200,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
