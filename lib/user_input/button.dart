import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            onPressed: () => print("用户单击了我"),
            onLongPress: () => print("用户长按了我"),
            child: const Text('ElevatedButton - Click Me'),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.star),
            onPressed: () => print("用户单击了我"),
            onLongPress: () => print("用户长按了我"),
            label: const Text('ElevatedButton.icon - Click Me'),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.star),
            onPressed: () => print("用户单击了我"),
            onLongPress: () => print("用户长按了我"),
            label: const Text('ButtonStyle - Click Me'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red;
                }
                return Colors.blue;
              }),
              textStyle: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const TextStyle(fontSize: 20);
                  }
                  return const TextStyle(fontSize: 15);
                },
              ),
              overlayColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
            ),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.star),
            onPressed: () => print("用户单击了我"),
            onLongPress: () => print("用户长按了我"),
            label: const Text('styleFrom - Click Me'),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.red,
              onSurface: Colors.red,
              onPrimary: null,
            ),
          ),
          TextButton(
            onPressed: () => print("用户单击了我"),
            onLongPress: () => print("用户长按了我"),
            child: const Text('TextButton - Click Me'),
          ),
          CupertinoButton(
            child: const Text('CupertinoButton - Click Me'),
            onPressed: () => print("用户单击了我"),
            color: Colors.red,
          ),
          CupertinoButton.filled(
            child: const Text('CupertinoButton.filled - Click Me'),
            onPressed: () => print("用户单击了我"),
            borderRadius: BorderRadius.circular(16),
          )
        ].map<Widget>((Widget e) {
          return Padding(padding: const EdgeInsets.all(10), child: e);
        }).toList(),
      ),
    );
  }
}
