import 'package:flutter/material.dart';

class FittedBoxExample extends StatefulWidget {
  const FittedBoxExample({Key? key}) : super(key: key);

  @override
  State<FittedBoxExample> createState() => _FittedBoxExampleState();
}

class _FittedBoxExampleState extends State<FittedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              color: Colors.grey,
              child: const Text("不使用 FittedBox"),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              color: Colors.grey,
              child: const FittedBox(
                child: Text("使用 FittedBox"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              color: Colors.grey,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  color: Colors.blue[200],
                  child: Row(
                    children: const [
                      Text("BoxFit.contain"),
                      FlutterLogo(
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              color: Colors.grey,
              child: FittedBox(
                fit: BoxFit.cover,
                clipBehavior: Clip.hardEdge, // 剪裁
                child: Container(
                  color: Colors.blue[200],
                  child: Row(
                    children: const [
                      Text("BoxFit.cover"),
                      FlutterLogo(
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              color: Colors.grey,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Container(
                  color: Colors.blue[200],
                  child: Row(
                    children: const [
                      Text("BoxFit.fill"),
                      FlutterLogo(
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              color: Colors.grey,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Container(
                  color: Colors.blue[200],
                  child: Row(
                    children: const [
                      Text("BoxFit.fitHeight"),
                      FlutterLogo(
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              color: Colors.grey,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                clipBehavior: Clip.hardEdge, // 剪裁
                child: Container(
                  color: Colors.blue[200],
                  child: Row(
                    children: const [
                      Text("BoxFit.fitWidth"),
                      FlutterLogo(
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              color: Colors.grey,
              child: FittedBox(
                fit: BoxFit.none,
                child: Container(
                  color: Colors.blue[200],
                  child: Row(
                    children: const [
                      Text("BoxFit.none"),
                      FlutterLogo(
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              color: Colors.grey,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Container(
                  color: Colors.blue[200],
                  child: Row(
                    children: const [
                      Text("BoxFit.scaleDown centerLeft"),
                      FlutterLogo(
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
