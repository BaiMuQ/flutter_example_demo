import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Row'),
        ),
        body: Container(
          height: 200,
          color: Colors.grey,
          child: Row(
            // 主轴方向所占空间尽量小5
            // mainAxisSize: MainAxisSize.min,
            // 主轴方向所占空间尽量大(默认值)
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            // 从下到上排列子组件
            // verticalDirection: VerticalDirection.up,
            children: [
              Container(
                width: 30,
                height: 100,
                color: Colors.blue,
              ),
              const FlutterLogo(
                size: 30,
              ),
              Container(
                width: 30,
                height: 100,
                color: Colors.black,
              ),
              const SizedBox(
                width: 30,
                height: 100,
              ),
              Container(
                width: 30,
                height: 100,
                color: Colors.grey,
              )
            ],
          ),
        ));
  }
}
