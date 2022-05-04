import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

import 'basis_layout/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Row(
          children: const [
            Expanded(
              child: BasisLayoutMain(),
            )
          ],
        ),
      ),
    );
  }
}
