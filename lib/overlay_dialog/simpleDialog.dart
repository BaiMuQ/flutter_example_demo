import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleDialogExample extends StatefulWidget {
  const SimpleDialogExample({Key? key}) : super(key: key);

  @override
  State<SimpleDialogExample> createState() => _SimpleDialogExampleState();
}

class _SimpleDialogExampleState extends State<SimpleDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleDialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                var msg = await showDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text("选择语言"),
                      children: [
                        SimpleDialogOption(
                          child: const Text("中文"),
                          onPressed: () => Navigator.of(context).pop("选择中文"),
                        ),
                        SimpleDialogOption(
                          child: const Text("English"),
                          onPressed: () => Navigator.of(context).pop("选择英语"),
                        ),
                      ],
                    );
                  },
                );
                print(msg);
              },
              child: const Text("SimpleDialog"),
            ),
            ElevatedButton(
              onPressed: () async {
                var msg = await showCupertinoDialog(
                  barrierDismissible: true,
                  context: context,
                  builder: (context) {
                    return const Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: CupertinoPopupSurface(
                          isSurfacePainted: false,
                          child: Padding(
                            child: FlutterLogo(
                              size: 80,
                            ),
                            padding: EdgeInsets.all(20),
                          ),
                        ),
                      ),
                    );
                  },
                );
                print(msg);
                // showCupertinoDialog(
                //   context: context,
                //   builder: (_) {
                //     return Center(
                //       child: CupertinoPopupSurface(
                //         isSurfacePainted: false,
                //         child: FlutterLogo(
                //           size: 200,
                //         ),
                //       ),
                //     );
                //   },
                // );
              },
              child: const Text("CupertinoPopupSurface"),
            )
          ],
        ),
      ),
    );
  }
}
