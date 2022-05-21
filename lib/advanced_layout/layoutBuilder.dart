import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatefulWidget {
  const LayoutBuilderExample({Key? key}) : super(key: key);

  @override
  State<LayoutBuilderExample> createState() => _LayoutBuilderExampleState();
}

class _LayoutBuilderExampleState extends State<LayoutBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 500) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) => Container(
                color: Colors.grey[index % 9 * 100],
                height: 100,
              ),
            );
          }
          return Row(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) => Container(
                    color: Colors.grey[index % 9 * 100],
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemBuilder: (BuildContext context, int index) => Container(
                    color: Colors.grey[index % 9 * 100],
                    height: 100,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
