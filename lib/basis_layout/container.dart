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
                  // ????????????
                  decoration: const BoxDecoration(
                    // ?????????????????????????????????????????????
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.grey],
                    ),
                    // ????????????
                    boxShadow: [
                      BoxShadow(blurRadius: 10),
                    ],
                  ),
                  // ????????????
                  foregroundDecoration: BoxDecoration(
                    // ???????????????
                    color: Colors.red.withOpacity(.5),
                    // ??????
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
