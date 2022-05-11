import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Column'),
        ),
        body: Container(
          width: 200,
          color: Colors.grey,
          child: Column(
            // 主轴方向所占空间尽量小
            // mainAxisSize: MainAxisSize.min,
            // 主轴方向所占空间尽量大(默认值)
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            // 从下到上排列子组件
            // verticalDirection: VerticalDirection.up,
            children: [
              Container(
                width: 100,
                height: 30,
                color: Colors.blue,
              ),
              const FlutterLogo(
                size: 30,
              ),
              Container(
                width: 100,
                height: 30,
                color: Colors.black,
              ),
              const SizedBox(
                width: 100,
                height: 30,
              ),
              Container(
                width: 100,
                height: 30,
                color: Colors.grey,
              )
            ],
          ),
        ));
  }
}
