import 'package:flutter/material.dart';
import 'package:flutter_example_start/async/index.dart';
import 'package:flutter_example_start/paging/index.dart';
import 'package:flutter_example_start/routes/index.dart';
import 'package:flutter_example_start/text_image/index.dart';
import 'package:flutter_example_start/user_input/index.dart';

import 'basis_layout/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _controller = PageController();

  final List<Widget> pages = const [
    BasisLayoutMain(),
    TextAndImageMain(),
    UserInputMain(),
    AsyncMain(),
    PagingMain()
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // 水平方向
                padding: const EdgeInsets.all(6), // 留白
                itemCount: pages.length,
                itemExtent: 120,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(2),
                    child: ElevatedButton(
                      onPressed: () {
                        _controller.animateToPage(index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      },
                      child: Text(
                        "${index + 1}:${pages[index].toString()}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pages.length,
                itemBuilder: (BuildContext context, int index) {
                  return pages[index];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
