import 'package:flutter/material.dart';
import 'package:flutter_example_start/routes/index.dart';

class SliverMain extends StatelessWidget {
  const SliverMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          '滚动布局 - Sliver',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),
        ),
      ),
      _buildListTitle(context, 'customScrollView'),
      _buildListTitle(context, 'sliverAppBar'),
      _buildListTitle(context, 'sliverPersistentHeader'),
      _buildListTitle(context, 'moreSliver'),
      _buildListTitle(context, 'sliverAnimatedList'),
      _buildListTitle(context, 'kd48_list'),
    ];
    return ListView(
      children: children,
    );
  }

  _buildListTitle(BuildContext context, String title) {
    return ListTile(
      title: Text(
          '${title[0].toUpperCase()}${title.substring(1)} (Sliver > $title)'),
      subtitle: Text('Navigator.pushNamed("$sliver/$title")'),
      onTap: () => Navigator.of(context).pushNamed('$sliver/$title'),
    );
  }
}
