import 'package:flutter/material.dart';

class DismissibleExample extends StatefulWidget {
  const DismissibleExample({Key? key}) : super(key: key);

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dismissible'),
        ),
        body: PageView(
          children: [
            ListView.separated(
              separatorBuilder: (_, index) => const Divider(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.black,
                    alignment: Alignment.centerLeft,
                    child: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                  secondaryBackground: Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.grey,
                    alignment: Alignment.centerRight,
                    child: const Icon(
                      Icons.sms,
                    ),
                  ),
                  child: Container(
                    height: 56,
                    alignment: Alignment.center,
                    child: Text("这是第${index + 1}项"),
                  ),
                  onDismissed: (direction) => print(direction),
                  onResize: () => print("resizing"),
                  confirmDismiss: (DismissDirection direction) async {
                    return await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("确认"),
                            content: const Text("确认要删除这一行吗？"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(false),
                                child: const Text("取消"),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(true),
                                child: const Text(
                                  "删除",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                );
              },
            ),
          ],
        ));
  }
}
