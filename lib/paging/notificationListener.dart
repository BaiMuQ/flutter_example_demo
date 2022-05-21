import 'package:flutter/material.dart';

class NotificationListenerExample extends StatefulWidget {
  const NotificationListenerExample({Key? key}) : super(key: key);

  @override
  State<NotificationListenerExample> createState() =>
      _NotificationListenerExampleState();
}

class _NotificationListenerExampleState
    extends State<NotificationListenerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotificationListener'),
      ),
      body: Scrollbar(
        child: NotificationListener(
          onNotification: (notification) {
            if (notification is MyNotification) {
              print(notification);
              return true;
            }
            return false;
          },
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        MyNotification("hello world").dispatch(context),
                    child: const Text("发送字符串通知 "),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        MyNotification(Colors.red).dispatch(context),
                    child: const Text("发送颜色通知 "),
                  ),
                ],
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Text("这是第一个列表的第$index项"),
                  );
                },
                itemCount: 200,
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class MyNotification extends Notification {
  final dynamic details;

  MyNotification(this.details);
}
