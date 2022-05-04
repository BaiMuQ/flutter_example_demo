import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.grey,
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 120,
                    height: 80,
                    color: Colors.black,
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 20,
                      height: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: const FlutterLogo(
                    size: 100,
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                    padding: const EdgeInsets.all(16),
                    color: Colors.grey,
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  margin: const EdgeInsets.only(bottom: 15),
                ),
                Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  // 背景修饰
                  decoration: const BoxDecoration(
                    // 从左到右，由黑色到灰色的渐变色
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.grey],
                    ),
                    // 模糊阴影
                    boxShadow: [
                      BoxShadow(blurRadius: 10),
                    ],
                  ),
                  // 前景修饰
                  foregroundDecoration: BoxDecoration(
                    // 半透明灰色
                    color: Colors.red.withOpacity(.5),
                    // 圆形
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    color: Colors.white,
                    width: 50,
                    height: 50,
                  ),
                  margin: const EdgeInsets.only(bottom: 15),
                ),
              ],
            ),
            Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: const SizedBox(
                height: 50,
                width: 50,
              ),
            )
          ],
        ));
  }
}
