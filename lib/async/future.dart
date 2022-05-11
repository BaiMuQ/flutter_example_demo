import 'dart:async';

import 'package:flutter/material.dart';

class FutureExample extends StatefulWidget {
  const FutureExample({Key? key}) : super(key: key);

  @override
  State<FutureExample> createState() => _FutureExampleState();
}

class _FutureExampleState extends State<FutureExample> {
  Future<String> mockGetName() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'FutureBuilder';
  }

  // final controller = StreamController();
  final controller = StreamController.broadcast();

  @override
  void initState() {
    controller.stream.listen((event) {
      print("event:$event");
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              mockGetName().then((value) => print(value));
              print('hi');
            },
            child: const Text("Click"),
          ),
          Center(
            child: FutureBuilder(
              initialData: 'init data',
              future: mockGetName(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                if (snapshot.hasError) {
                  return Row(
                    children: [
                      const Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                      Text('over:${snapshot.error}')
                    ],
                  );
                }
                if (snapshot.hasData) {
                  return Row(
                    children: [
                      const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                      Text('over:${snapshot.data}')
                    ],
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.sink.add(1);
                },
                child: const Text('Add Stream 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.sink.add(2);
                },
                child: const Text('Add Stream 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.sink.add('hi');
                },
                child: const Text('Add Stream hi'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.close();
                },
                child: const Text('Close Stream'),
              ),
              Center(
                child: StreamBuilder(
                  stream: controller.stream
                      .where((event) => event is int)
                      .map((event) => event * 2)
                      .distinct(),
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    print("build");
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        return const Text("ConnectionState.none:没有数据流");
                      case ConnectionState.waiting:
                        return const Text("ConnectionState.waiting:等待数据流");
                      case ConnectionState.active:
                        if (snapshot.hasError) {
                          return Text("hasError:${snapshot.error}");
                        }
                        if (snapshot.hasData) {
                          return Text("hasData:${snapshot.data}");
                        }
                        break;
                      case ConnectionState.done:
                        return const Text("ConnectionState.done:数据流已经关闭");
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ],
          )
        ].map<Widget>((Widget e) {
          return Padding(padding: const EdgeInsets.all(10), child: e);
        }).toList(),
      ),
    );
  }
}
