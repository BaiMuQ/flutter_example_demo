import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text'),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hello w100',
              style: TextStyle(fontWeight: FontWeight.w100),
            ),
            const Text(
              'Hello w400',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            const Text(
              'Hello w700',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'Hello w900',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '这段文字为斜体',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 28,
                decoration: TextDecoration.combine([
                  TextDecoration.overline,
                  TextDecoration.underline,
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "这是一行被划掉的文字",
              style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.black,
                  fontSize: 28,
                  decoration: TextDecoration.lineThrough, // 划掉
                  decorationColor: Colors.white, // 白色
                  decorationStyle: TextDecorationStyle.solid, // 实线
                  decorationThickness: 4 // 粗细为4单位
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "这是一行有下画波浪线的文字",
              style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.black,
                  fontSize: 28,
                  decoration: TextDecoration.underline, // 划掉
                  decorationColor: Colors.white, // 白色
                  decorationStyle: TextDecorationStyle.wavy, // 实线
                  decorationThickness: 2 // 粗细为4单位
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "夏天要这样写字隔开散热快 summer",
              style: TextStyle(letterSpacing: 4),
            ),
            const Text(
              "单词分开 主要靠空格 love summer",
              style: TextStyle(wordSpacing: 10),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "文字阴影效果",
              style: TextStyle(fontSize: 40, color: Colors.black, shadows: [
                BoxShadow(
                  offset: Offset(10, 10),
                  color: Colors.grey,
                  blurRadius: 8,
                )
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "同时使用4个阴影",
              style: TextStyle(fontSize: 40, color: Colors.black, shadows: [
                BoxShadow(
                  offset: Offset(-2, -2),
                  color: Colors.grey,
                ),
                BoxShadow(
                  offset: Offset(-2, 2),
                  color: Colors.grey,
                ),
                BoxShadow(
                  offset: Offset(2, -2),
                  color: Colors.grey,
                ),
                BoxShadow(
                  offset: Offset(2, 2),
                  color: Colors.grey,
                )
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Text(
                  "文字镂空效果",
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4
                      ..color = Colors.black,
                  ),
                ),
                const Text(
                  "文字镂空效果",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "颜色渐变",
              style: TextStyle(
                fontSize: 40,
                background: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 0),
                    const Offset(150, 0),
                    [Colors.black, Colors.white],
                  ),
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 100),
                    const Offset(0, 180),
                    [Colors.white, Colors.black],
                  ),
              ),
            ),
            Column(
              children: [
                Container(
                  color: Colors.grey[400],
                  child: const Text(
                    "末尾对齐",
                    textAlign: TextAlign.end,
                  ),
                ),
                Container(
                  width: 300,
                  color: Colors.grey[400],
                  child: const Text(
                    "末尾对齐",
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                '初雪降临，多么美啊！它整日整夜那么静静地飘着，落在山岭上，落在草地上，'
                '落在世人的屋顶上，落在逝者的坟墓上。在一片白茫茫之中，只有河流在美丽的画面上划出一道弯弯曲曲的黑线；'
                '还有那叶儿落净的树木，映衬着铅灰色的天空，更显得枝丫交错，姿态万千。初雪飘落时，'
                '是何等的宁谧，何等的幽静！一切声响都趋沉寂，一切噪音都化作柔和的音乐。'
                '再也听不见马蹄得得，再也听不见车轮辚辚！唯有雪橇的铃铛，奏出和谐的乐声，'
                '那明快欢乐的节拍犹如孩子们心房的搏动。',
                style: TextStyle(fontSize: 20),
                // textScaleFactor: 1.2, // 文字缩放系数
                // softWrap: false,
                maxLines: 3,
                // overflow: TextOverflow.clip, // 剪裁
                overflow: TextOverflow.ellipsis, // 省略号
                // overflow: TextOverflow.fade, // 渐淡
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // 语意标签
            const Center(
              child: Text(
                "¥ 5.00",
                semanticsLabel: "五元整",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Text("明月几时有"),
                  Text("把酒问青天"),
                  Text(
                    "不知天上宫阙",
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text("今夕是何年"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
              child: Column(
                children: <Widget>[
                  const DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                    ),
                    child: Text("落霞与孤鹜齐飞"),
                  ),
                  DefaultTextStyle.merge(
                    style: const TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                    child: const Text("秋水共长天一色"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
