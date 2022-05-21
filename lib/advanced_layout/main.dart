import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class AdvancedLayoutMain extends StatelessWidget {
  const AdvancedLayoutMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '进阶布局 - Advanced Layout',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'padding'),
      _buildListTitle(context, 'safeArea'),
      _buildListTitle(context, 'fittedBox'),
      _buildListTitle(context, 'flex'),
      _buildListTitle(context, 'limitedBox'),
      _buildListTitle(context, 'layoutBuilder'),
      _buildListTitle(context, 'fractionallySizedBox'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (Advanced Layout > $title)'),
      subtitle: Text('Navigator.pushNamed("$advancedLayout/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$advancedLayout/$title'),
    );
  }
}
