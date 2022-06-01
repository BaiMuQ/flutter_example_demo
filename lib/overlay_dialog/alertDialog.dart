import 'package:flutter/material.dart';

class AlertDialogExample extends StatefulWidget {
  const AlertDialogExample({Key? key}) : super(key: key);

  @override
  State<AlertDialogExample> createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                var msg = await showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return const MyDialog("332323");
                  },
                );
                print(msg);
              },
              child: const Text("ShowDialog"),
            ),
            ElevatedButton(
              onPressed: () async {
                var msg = await showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    double _value = 0.5;
                    return AlertDialog(
                      title: const Text("音量1"),
                      content: IntrinsicHeight(
                        child: StatefulBuilder(
                          builder: (_, StateSetter setState) {
                            return Slider(
                              value: _value,
                              onChanged: (v) => setState(() => _value = v),
                            );
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(_value);
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    );
                  },
                );
                print(msg);
              },
              child: const Text("VolumeControlDialog"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyDialog extends StatelessWidget {
  final String title;
  const MyDialog(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: const Text("你收到一条警告！！"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("取消"),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text("确认"),
        ),
      ],
      titlePadding: EdgeInsets.only(top: 20),
      titleTextStyle: TextStyle(fontSize: 24, color: Colors.grey),
      contentPadding: EdgeInsets.only(top: 30, bottom: 5),
      contentTextStyle: TextStyle(fontSize: 24, color: Colors.green),
      insetPadding: EdgeInsets.only(top: 200),
      elevation: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
      backgroundColor: Colors.blue[100],
    );
  }
}

class VolumeControlDialog extends StatefulWidget {
  final String title;
  const VolumeControlDialog(this.title, {Key? key}) : super(key: key);

  @override
  State<VolumeControlDialog> createState() => _VolumeControlDialogState();
}

class _VolumeControlDialogState extends State<VolumeControlDialog> {
  double _value = 0.5;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: IntrinsicHeight(
        child: Slider(
          value: _value,
          onChanged: (v) => setState(() {
            _value = v;
          }),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(_value);
          },
          child: const Text("OK"),
        ),
      ],
    );
  }
}
