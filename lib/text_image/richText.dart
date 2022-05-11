import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('RichText'),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                text: "晋太元中",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "武陵",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: "人捕鱼为业。",
                  ),
                  TextSpan(
                    text: "缘溪行，忘路之远近。",
                    style: TextStyle(fontStyle: FontStyle.italic),
                    children: [
                      TextSpan(text: "忽逢桃花林，"),
                      TextSpan(
                        text: "夹岸",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(text: "数百步，中无杂树，芳草鲜美，"),
                      TextSpan(
                        text: "落英缤纷",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.wavy,
                        ),
                      ),
                      TextSpan(text: "。"),
                    ],
                  ),
                  TextSpan(text: "渔人甚异之。复前行，与穷其林。"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const DefaultTextStyle(
              style: TextStyle(color: Colors.red),
              child: Text.rich(
                TextSpan(
                  text: "晋太元中",
                  style: TextStyle(
                    fontSize: 18,
                    // color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "武陵",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: "人捕鱼为业。",
                    ),
                    TextSpan(
                      text: "缘溪行，忘路之远近。",
                      style: TextStyle(fontStyle: FontStyle.italic),
                      children: [
                        TextSpan(text: "忽逢桃花林，"),
                        TextSpan(
                          text: "夹岸",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(text: "数百步，中无杂树，芳草鲜美，"),
                        TextSpan(
                          text: "落英缤纷",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.wavy,
                          ),
                        ),
                        TextSpan(text: "。"),
                      ],
                    ),
                    TextSpan(text: "渔人甚异之。复前行，与穷其林。"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: "我已阅读",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "使用条款",
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('点击使用条款'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
