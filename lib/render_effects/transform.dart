import 'package:flutter/material.dart';

class TransformExample extends StatefulWidget {
  const TransformExample({Key? key}) : super(key: key);

  @override
  State<TransformExample> createState() => _TransformExampleState();
}

class _TransformExampleState extends State<TransformExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [],
        ),
      ),
    );
  }
}
