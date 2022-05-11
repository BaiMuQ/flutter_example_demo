import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class TextAndImageMain extends StatelessWidget {
  const TextAndImageMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '文字与图片 - Text & Image',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'text'),
      _buildListTitle(context, 'richText'),
      _buildListTitle(context, 'image'),
      _buildListTitle(context, 'icon'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (Text&Image > $title)'),
      subtitle: Text('Navigator.pushNamed("$textAndImage/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$textAndImage/$title'),
    );
  }
}
