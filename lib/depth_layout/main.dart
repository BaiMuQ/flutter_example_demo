import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class DepthLayoutMain extends StatelessWidget {
  const DepthLayoutMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '深入布局 - Depth & Layout',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'intrinsic'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (Depth & Layout > $title)'),
      subtitle: Text('Navigator.pushNamed("$depthLayout/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$depthLayout/$title'),
    );
  }
}
