import 'package:flutter/material.dart';

class SingleChildScrollViewExample extends StatefulWidget {
  const SingleChildScrollViewExample({Key? key}) : super(key: key);

  @override
  State<SingleChildScrollViewExample> createState() =>
      _SingleChildScrollViewExampleState();
}

class _SingleChildScrollViewExampleState
    extends State<SingleChildScrollViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SingleChildScrollView'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const FlutterLogo(
                size: 400,
              ),
              const Text("欢迎来到Flutter登陆页面"),
              const TextField(
                decoration: InputDecoration(labelText: "用户名"),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: "密码",
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 32,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("登陆"))
            ],
          ),
        ));
  }
}
