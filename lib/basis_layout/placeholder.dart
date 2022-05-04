import 'package:flutter/material.dart';

class PlaceholderExample extends StatelessWidget {
  const PlaceholderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Placeholder'),
        ),
        body: const SizedBox(
          width: 300,
          height: 300,
          child: Placeholder(
            strokeWidth: 5,
            color: Colors.grey,
          ),
        ));
  }
}
