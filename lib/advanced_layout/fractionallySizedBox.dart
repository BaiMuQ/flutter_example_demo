import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatefulWidget {
  const FractionallySizedBoxExample({Key? key}) : super(key: key);

  @override
  State<FractionallySizedBoxExample> createState() =>
      _FractionallySizedBoxExampleState();
}

class _FractionallySizedBoxExampleState
    extends State<FractionallySizedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBox'),
      ),
      body: PageView(
        children: [
          FractionallySizedBox(
            heightFactor: .5,
            widthFactor: .5,
            child: Container(
              color: Colors.grey,
            ),
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.grey,
              child: const FractionallySizedBox(
                heightFactor: 2,
                widthFactor: 2,
                child: FlutterLogo(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [0.5, 1.5]
                .map(
                  (factor) => Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                    child: FractionallySizedBox(
                      heightFactor: factor,
                      widthFactor: factor,
                      alignment: Alignment.bottomRight,
                      child: FlutterLogo(),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
