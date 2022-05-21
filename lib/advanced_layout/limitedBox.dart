import 'package:flutter/material.dart';

class LimitedBoxExample extends StatefulWidget {
  const LimitedBoxExample({Key? key}) : super(key: key);

  @override
  State<LimitedBoxExample> createState() => _LimitedBoxExampleState();
}

class _LimitedBoxExampleState extends State<LimitedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LimitedBox'),
      ),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 50,
              maxWidth: 150,
              minHeight: 50,
              maxHeight: 150,
            ),
            child: LimitedBox(
              maxHeight: 100, // 无效
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          LimitedBox(
            maxHeight: 100,
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
