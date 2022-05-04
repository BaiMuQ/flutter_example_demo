import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Container(
          color: Colors.grey,
          child: Column(
            children: [
              const SizedBox(
                width: 50,
                height: 50,
                child: FlutterLogo(),
              ),
              const SizedBox(
                width: double.infinity,
                height: 50,
                child: Placeholder(),
              ),
              Container(
                width: 400,
                height: 400,
                color: Colors.blueAccent,
                child: const SizedBox(
                  width: 200,
                  height: 200,
                  child: FlutterLogo(),
                ),
              )
            ],
          )),
    );
  }
}
