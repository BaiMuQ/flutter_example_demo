import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({Key? key}) : super(key: key);

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                var msg = await showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => DraggableScrollableSheet(
                    expand: false,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return ListView.builder(
                        controller: scrollController,
                        itemCount: 100,
                        itemExtent: 50,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: Text("item $index"),
                          );
                        },
                      );
                    },
                  ),
                );
                print(msg);
              },
              child: const Text("BottomSheet"),
            ),
            ElevatedButton(
              onPressed: () async {
                var msg = await showCupertinoModalPopup(
                  barrierDismissible: true,
                  context: context,
                  builder: (context) => CupertinoActionSheet(
                    title: const Text("确认删除"),
                    message: const Text("你确定要删除这份记录吗"),
                    actions: [
                      CupertinoActionSheetAction(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text("删除"),
                        isDestructiveAction: true,
                      ),
                    ],
                    cancelButton: CupertinoActionSheetAction(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text("取消"),
                      isDefaultAction: true,
                    ),
                  ),
                );
                print(msg);
              },
              child: const Text("ActionSheet"),
            )
          ],
        ),
      ),
    );
  }
}
