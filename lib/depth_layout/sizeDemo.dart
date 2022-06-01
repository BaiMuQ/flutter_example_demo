import 'package:flutter/material.dart';

class SizeExample extends StatefulWidget {
  const SizeExample({Key? key}) : super(key: key);

  @override
  State<SizeExample> createState() => _SizeExampleState();
}

class _SizeExampleState extends State<SizeExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizeExample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "AspectRatio",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                PreferredSize(
                  child: FlutterLogo(),
                  preferredSize: Size.fromHeight(20),
                ),
                Text(
                  "PreferredSize",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Visibility(
                  visible: true,
                  child: FlutterLogo(
                    size: 50,
                  ),
                ),
                Text(
                  "Visibility",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IndexedStack(
                  index: 2,
                  children: [
                    Container(
                      width: 20,
                      height: 50,
                      color: Colors.red,
                    ),
                    Container(
                      width: 20,
                      height: 50,
                      color: Colors.pink,
                    ),
                    Container(
                      width: 20,
                      height: 50,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const Text(
                  "IndexedStack : 2",
                  style: TextStyle(fontSize: 28),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
