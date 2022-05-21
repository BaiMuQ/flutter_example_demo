import 'package:flutter/material.dart';

class FlexExample extends StatefulWidget {
  const FlexExample({Key? key}) : super(key: key);

  @override
  State<FlexExample> createState() => _FlexExampleState();
}

class _FlexExampleState extends State<FlexExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flex'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Flex(
              direction: Axis.vertical,
              children: const [FlutterLogo(), FlutterLogo(), FlutterLogo()],
            ),
            Row(
              children: [
                const FlutterLogo(),
                Expanded(
                  child: Container(
                    color: Colors.grey[400],
                    height: 24,
                    alignment: Alignment.center,
                    child: const Text("这是Expanded区域"),
                  ),
                ),
                const FlutterLogo(),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.grey[200],
                    height: 24,
                    alignment: Alignment.center,
                    child: const Text("Expanded:4"),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.grey[400],
                    height: 24,
                    alignment: Alignment.center,
                    child: const Text("Expanded:3"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.grey[600],
                    height: 24,
                    alignment: Alignment.center,
                    child: const Text("Expanded:2"),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: List.generate(150,
                      (index) => index % 2 == 0 ? Colors.grey : Colors.white),
                ),
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      height: 24,
                      width: 80,
                      color: Colors.grey[400],
                      child: const Text("Flexible"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 24,
                      color: Colors.grey[600],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 24,
                      color: Colors.grey[800],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: List.generate(150,
                      (index) => index % 2 == 0 ? Colors.grey : Colors.white),
                ),
              ),
              child: Row(
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 24,
                      color: Colors.grey[600],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 24,
                      color: Colors.grey[800],
                    ),
                  )
                ],
              ),
            )
          ].map((e) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: e,
            );
          }).toList(),
        ),
      ),
    );
  }
}
