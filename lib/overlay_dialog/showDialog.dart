import 'package:flutter/material.dart';

class ShowDialogExample extends StatefulWidget {
  const ShowDialogExample({Key? key}) : super(key: key);

  @override
  State<ShowDialogExample> createState() => _ShowDialogExampleState();
}

class _ShowDialogExampleState extends State<ShowDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShowDialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => showDialog(
                barrierDismissible: true,
                context: context,
                builder: (context) {
                  return Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                    ),
                  );
                },
              ),
              child: const Text("ShowDialog"),
            ),
          ],
        ),
      ),
    );
  }
}
