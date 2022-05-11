import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
      ),
      body: ListView(
        children: <Widget>[
          TextField(
            onSubmitted: (value) => print("submitted: $value"),
            decoration: const InputDecoration(
              icon: Icon(Icons.add), // 图标
              prefixIcon: Icon(Icons.lock), // 前缀图标
              prefixText: "http://", // 前缀文本内容
              prefixIconConstraints: BoxConstraints(minWidth: 50), // 前缀图标约束
              // prefix: Icon(Icons.percent),
              counterText: "0/40", // 计数器文本
              // counter: Text('0/40'),
              suffix: Icon(Icons.clear), // 后缀组件
              // suffixText: "清除",
              suffixIcon: Icon(Icons.visibility), // 后缀图标
            ),
          ),
          TextField(
            onSubmitted: (value) => print("submitted: $value"),
            decoration: const InputDecoration(
                labelText: "Date of Birth",
                hintText: "yyyy-mm-dd",
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                hintMaxLines: 1,
                helperText:
                    '''本人也是经过了深思熟虑,在每个日日夜夜思考这个问题. 我们不得不面对一个非常尴尬的事实, 那就是, 俾斯麦说过一句富有哲理的话, 对于不屈不挠的人来说，没有失败这回事。这句话把我们带到了一个新的维度去思考这个问题: 随机一段废话, 发生了会如何, 不发生又会如何. 既然如何, 
                生活中, 若随机一段废话出现了, 我们就不得不考虑它出现了的事实. 随机一段废话因何而发生?从这个角度来看, 随机一段
                ''',
                helperMaxLines: 2),
          ),
          const TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              helperText: "UnderlineInputBorder",
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              helperText: "OutlineInputBorder",
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              helperText: "InputBorder.none",
            ),
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(48),
                  borderSide: const BorderSide(width: 8.0, color: Colors.black),
                ),
                helperText: "width:8.0,black"),
          ),
          const TextField(
            decoration: InputDecoration(
              errorText: null,
              helperText: "Helper Text",
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              errorText: "This field cannot be left blank",
              helperText: "Helper Text",
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              errorText: "This field cannot be left blank",
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 8.0, color: Colors.red),
              ),
            ),
          ),
          TextField(
            cursorColor: Colors.white,
            cursorWidth: 8,
            cursorRadius: const Radius.circular(4),
            style: const TextStyle(color: Colors.white),
            maxLines: 5,
            decoration: InputDecoration(
              labelText: "Text",
              alignLabelWithHint: true,
              filled: true,
              fillColor: Colors.black,
              hoverColor: Colors.white.withOpacity(0.5),
            ),
          ),
          const TextField(
            maxLength: 10,
            maxLengthEnforcement: MaxLengthEnforcement.none,
            decoration: InputDecoration(labelText: "文本长度限制"),
          ),
          TextField(
            cursorColor: Colors.red,
            cursorWidth: 8,
            cursorRadius: const Radius.circular(4),
            obscureText: true,
            obscuringCharacter: '*',
            maxLength: 20,
            buildCounter: (
              BuildContext context, {
              required int currentLength,
              required int? maxLength,
              required bool isFocused,
            }) {
              return Text('$currentLength/$maxLength');
            },
            decoration: const InputDecoration(
              labelText: "文本 buildCounter",
            ),
          ),
          TextField(
            decoration: const InputDecoration(labelText: "input Formatters"),
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                "zzz",
                replacementString: "Zzz",
              ),
              FilteringTextInputFormatter.deny(
                RegExp(r"[aeiou]"),
                replacementString: "*",
              )
            ],
          ),
          const TextField(
            enableInteractiveSelection: true,
            decoration: InputDecoration(labelText: "软键盘弹出"),
            toolbarOptions: ToolbarOptions(
              copy: true,
              cut: true,
              paste: true,
              selectAll: true,
            ),
          ),
          const TextField(
            decoration: InputDecoration(labelText: "软盘样式、类型 、回车键替换"),
            keyboardType: TextInputType.emailAddress,
            keyboardAppearance: Brightness.dark,
            textInputAction: TextInputAction.search,
          ),
          const TextFieldDemo(),
          const CupertinoTextField(
            placeholder: "Enter you Email",
            prefix: Text("https://"),
            prefixMode: OverlayVisibilityMode.always,
            suffix: Icon(Icons.star_border),
            suffixMode: OverlayVisibilityMode.notEditing,
            clearButtonMode: OverlayVisibilityMode.editing,
          ),
          const TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(16),
              prefix: Icon(Icons.person),
              suffix: Icon(Icons.star),
            ),
          ),
          const CupertinoTextField(
            padding: EdgeInsets.all(16),
            prefix: Icon(Icons.person),
            suffix: Icon(Icons.star_border),
          ),
        ].map<Widget>((Widget e) {
          return Padding(padding: const EdgeInsets.all(10), child: e);
        }).toList(),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final TextEditingController _controller =
      TextEditingController(text: "初始化内容");

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print('现在的值：${_controller.value}');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: "Controller"),
          controller: _controller,
        )
      ],
    );
  }
}
